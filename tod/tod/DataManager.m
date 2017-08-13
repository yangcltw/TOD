//
//  DataManager.m
//  tod
//
//  Created by Bart Yang on 2017/8/13.
//  Copyright © 2017年 Bart Yang. All rights reserved.
//

#import <Foundation/Foundation.h>
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

- (void) retreiveDataFromServer {
    
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
        // TODO
        NSLog(@"Get data");
        NSString *myString = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
        NSLog(myString);
    } failure:^(NSData *data, NSError *error) {
        //TODO
    }];
    
}


@end
