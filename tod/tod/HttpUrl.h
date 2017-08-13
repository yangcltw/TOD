//
//  HttpUrl.h
//  tod
//
//  Created by Bart Yang on 2017/8/13.
//  Copyright © 2017 Bart Yang. All rights reserved.
//

#ifndef HttpUrl_h
#define HttpUrl_h

@interface HttpUrl : NSObject {
    NSMutableString *url;
}
- (void) buildUrl:(NSString*) protocol baseUrl:(NSString*)baseUrl path:(NSString*) path;
- (void) buildQueryString:(NSDictionary*)map;
// TODO:
//- (void) buildHeader:(NSDictionary*)map;
//- (void) buildRequstBody;
- (NSString*) getUrl;

@end

#endif /* HttpUrl_h */
