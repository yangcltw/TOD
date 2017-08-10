//
//  AppDelegate.h
//  tod
//
//  Created by Bart Yang on 2017/8/9.
//  Copyright © 2017年 Bart Yang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

