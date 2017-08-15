//
//  ParkDetailViewController.h
//  tod
//
//  Created by Bart Yang on 2017/8/14.
//  Copyright © 2017 Bart Yang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TodModel.h"

@interface ParkDetailViewController : UIViewController {
    AttractionsModel *attractions;
}
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (weak, nonatomic) IBOutlet UIView *contentView;
@property (strong, nonatomic) IBOutlet UIScrollView *srollView;
@property (weak, nonatomic) IBOutlet UIImageView *AttractionImageView;
@property (weak, nonatomic) IBOutlet UILabel *parkName;
@property (weak, nonatomic) IBOutlet UILabel *attractionName;
@property (weak, nonatomic) IBOutlet UILabel *openDuration;
@property (weak, nonatomic) IBOutlet UILabel *introduction;
@property (weak, nonatomic) IBOutlet UIScrollView *imageScrollview;

+ (ParkDetailViewController*) storyboardInstance;

@end
