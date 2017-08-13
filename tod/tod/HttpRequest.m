//
//  HttpRequest.m
//  tod
//
//  Created by Bart Yang on 2017/8/13.
//  Copyright © 2017 Bart Yang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HttpRequest.h"

@implementation HttpRequest

- (instancetype)init {
    self = [super init];
    return self;
}

- (void) buildUrl:(NSString*) protocol baseUrl:(NSString*)baseUrl path:(NSString*) path {
    
}
- (void) buildQueryString:(NSDictionary*)map {
    
}
- (void) buildHeader:(NSDictionary*)map {
    
}

+ (void) getTodData:(HttpUrl*)httpUrl
            success:(void(^)(NSData*))successBlock_
            failure:(void(^)(NSData*, NSError*))failureBlock_ {
    // 1
    NSString *dataUrl = [httpUrl getUrl];
    NSURL *url = [NSURL URLWithString:dataUrl];
    
    // 2
    NSURLSessionDataTask *downloadTask = [[NSURLSession sharedSession]
                                          dataTaskWithURL:url completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
                                              // 4: Handle response here
                                              NSLog(@"Get data back");
                                              if (error != nil) {
                                                  if (failureBlock_) {
                                                      failureBlock_(data,error);
                                                  }
                                              } else {
                                                  if (successBlock_) {
                                                      successBlock_(data);
                                                  }
                                              }
                                          }];
    
    // 3
    [downloadTask resume];
}

@end
