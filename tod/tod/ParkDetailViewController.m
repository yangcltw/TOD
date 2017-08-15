//
//  ParkDetailViewController.m
//  tod
//
//  Created by Bart Yang on 2017/8/14.
//  Copyright © 2017 Bart Yang. All rights reserved.
//

#import "ParkDetailViewController.h"
#import "TodModel.h"
#import "DataManager.h"
#import <SDWebImage/UIImageView+WebCache.h>

@interface ParkDetailViewController ()

@end

@implementation ParkDetailViewController

+ (ParkDetailViewController*) storyboardInstance {
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"ParkDetailViewController" bundle: nil ];
    return [storyboard instantiateInitialViewController];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    }
-(void) viewDidAppear:(BOOL)animated {
    attractions = [[DataManager sharedInstance] getSelectedAttraction];
    
    [self.AttractionImageView sd_setImageWithURL:[NSURL URLWithString:attractions.Image]
                                placeholderImage:[UIImage imageNamed:@"default.JPG"]];
    self.parkName.text = attractions.ParkName;
    self.attractionName.text = attractions.Name;
    self.openDuration.text = attractions.OpenTime;
    self.introduction.text = attractions.Introduction;
    //[self.introduction sizeToFit];
    //[self.srollView sizeToFit];
    
    [self.scrollView setContentSize:CGSizeMake(self.contentView.frame.size.width,self.contentView.frame.size.height)];

    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
