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
    NSMutableDictionary *attractionsDic;
    NSIndexPath *selectedIndex;
    NSArray *dictionaryKeys;
}
+ (instancetype) sharedInstance;
- (void) retreiveDataFromServer:(void(^)())completeBlock;
- (NSMutableDictionary*) getTodData;
// TODO : local storage
- (void) setSelectedIndex:(NSIndexPath*) index;
- (AttractionsModel*) getSelectedAttraction;
- (NSArray*) getDictionaryKeys;
@end
#endif /* DataManager_h */
