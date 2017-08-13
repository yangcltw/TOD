//
//  HttpUrl.m
//  tod
//
//  Created by Bart Yang on 2017/8/13.
//  Copyright © 2017 Bart Yang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HttpUrl.h"

@implementation HttpUrl

- (void) buildUrl:(NSString*) protocol baseUrl:(NSString*)baseUrl path:(NSString*) path {
    // TODO validate url before build
    url = [[NSMutableString alloc] init];
    [url appendString:protocol];
    [url appendString:@"://"];
    [url appendString:baseUrl];
}
- (void) buildQueryString:(NSDictionary*)map {
    // TODO validate url before build
    [url appendString:@"?"];
    for (id key in map) {
        [url appendString:key];
        [url appendString:@"="];
        [url appendString:[map objectForKey:key]];
        [url appendString:@"&"];
    }
    // revmoe latest &
    [url deleteCharactersInRange:NSMakeRange([url length]-1, 1)];
}

- (NSString*) getUrl {
    return url;
}

@end
