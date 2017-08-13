//
//  DataManager.m
//  tod
//
//  Created by Bart Yang on 2017/8/13.
//  Copyright © 2017年 Bart Yang. All rights reserved.
//

#import <Foundation/Foundation.h>
@import JSONModel;
#import "DataManager.h"
#import "HttpUrl.h"
#import "HttpRequest.h"
#import "NetworkConstants.h"


@implementation DataManager

+ (instancetype) sharedInstance {
    static DataManager *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[DataManager alloc] init];
    });
    return instance;
}

- (void) retreiveDataFromServer:(void(^)())completeBlock {
    
    HttpUrl *httpUrl = [[HttpUrl alloc] init];
    [httpUrl buildUrl:RequestProtocal baseUrl:RequestBaseUrl path:RequestPath];
    
    id objects[] = { QStringValueScope,  QStringParkValueRid};
    id keys[] = { QStringKeyScope, QStringKeyRid};
    NSUInteger count = sizeof(objects) / sizeof(id);
    NSDictionary *queryString = [NSDictionary dictionaryWithObjects:objects
                                                           forKeys:keys
                                                             count:count];
    [httpUrl buildQueryString:queryString];
    
    
    [HttpRequest getTodData:httpUrl success:^(NSData *data) {
        NSError *err;
        id jsonDict = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:&err];
        attractions = [[TodModel alloc] initWithDictionary:jsonDict error:&err];
        [self processModels];
        if (completeBlock) {
            completeBlock();
        }

    } failure:^(NSData *data, NSError *error) {
        //TODO
    }];
    
}

- (void) processModels {
    attractionsDic = [[NSMutableDictionary alloc]init];
    NSArray <AttractionsModel> *results = attractions.result.results;
    for (AttractionsModel* attraction in results) {
        NSMutableArray <AttractionsModel> *parks = [attractionsDic objectForKey:attraction.ParkName];
        if (parks == nil) {
            NSMutableArray <AttractionsModel> *array = [[NSMutableArray alloc] init];
            [array insertObject:attraction atIndex:0];
            [attractionsDic setValue:array forKey:attraction.ParkName];
        } else {
            [parks addObject:attraction];
        }
    }
    //NSLog(@"data processing");
    
}
- (NSMutableDictionary*) getTodData {
    return attractionsDic;
}

@end
