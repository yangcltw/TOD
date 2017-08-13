//
//  HttpRequest.h
//  tod
//
//  Created by Bart Yang on 2017/8/13.
//  Copyright © 2017 Bart Yang. All rights reserved.
//

#ifndef HttpRequest_h
#define HttpRequest_h
#import "HttpUrl.h"
#import <Foundation/Foundation.h>

@interface HttpRequest : NSObject {
    HttpUrl *httpUrl;
}
+ (void) getTodData:(HttpUrl*)httpUrl
            success:(void(^)(NSData*))successBlock_
            failure:(void(^)(NSData*, NSError*))filureBlock_;

@end

#endif /* HttpRequest_h */
