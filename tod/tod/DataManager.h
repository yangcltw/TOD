//
//  DataManager.h
//  tod
//
//  Created by Bart Yang on 2017/8/13.
//  Copyright © 2017年 Bart Yang. All rights reserved.
//

#ifndef DataManager_h
#define DataManager_h
#import "TodModel.h"

@interface DataManager : NSObject {
    TodModel *attractions;
}
+ (instancetype) sharedInstance;
- (void) retreiveDataFromServer;
- (TodModel*) getTodData;
// TODO : local storage
@end
#endif /* DataManager_h */
