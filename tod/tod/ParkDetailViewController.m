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
#import "AttractionsCollectionViewCell.h"
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
    self.attractionCollections.delegate = self;
    self.attractionCollections.dataSource = self;
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
    [self.attractionCollections reloadData];
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
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    NSInteger count = [[[DataManager sharedInstance] getRelatedAttractions:attractions] count];

    return count;
}

- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellIdentifier = @"CollectionCell";
    AttractionsCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:cellIdentifier forIndexPath:indexPath];
    
    AttractionsModel *attraction = [[[DataManager sharedInstance] getRelatedAttractions:attractions] objectAtIndex:indexPath.row];
    // populate the cell
    dispatch_async(dispatch_get_main_queue(), ^{
        [cell.collectionImage sd_setImageWithURL:[NSURL URLWithString:attraction.Image]
                              placeholderImage:[UIImage imageNamed:@"default.JPG"]];
    });
    cell.collectionLabel.text = attraction.Name;
    // return the cell
    return cell;
}

#pragma UICollectionViewDelegate

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    //NSString *selected = [self.tracks objectAtIndex:indexPath.row];
    //NSLog(@"selected=%@", selected);
}


@end
