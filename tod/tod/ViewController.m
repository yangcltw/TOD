//
//  ViewController.m
//  tod
//
//  Created by Bart Yang on 2017/8/9.
//  Copyright © 2017 Bart Yang. All rights reserved.
//

#import "ViewController.h"
#import "ParkDetailViewController.h"
#import "DataManager.h"
#import "AttractionCell.h"
#import <SDWebImage/UIImageView+WebCache.h>

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    self.tableView.rowHeight = UITableViewAutomaticDimension;
    self.tableView.estimatedRowHeight = 120;
    // Do any additional setup after loading the view, typically from a nib.
    DataManager *manager = [DataManager sharedInstance];
    [manager retreiveDataFromServer:^{
        keys = [[DataManager sharedInstance] getDictionaryKeys];
        [self.tableView reloadData];
    }];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark -
#pragma mark Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return [[[DataManager sharedInstance] getTodData] count];
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    NSInteger count =  [[[[DataManager sharedInstance] getTodData] objectForKey:keys[section]] count];
    return count;
    
}
-(UIView *) tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    UILabel *label = [[UILabel alloc] init];
    label.text=keys[section];
    label.textColor=[UIColor whiteColor];
    label.backgroundColor=[UIColor blackColor];
    label.textAlignment=NSTextAlignmentCenter;
    return label;
}

-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 40;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    AttractionCell *cell = (AttractionCell*) [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    // Configure the cell...
    if (cell == nil) {
        cell = [[AttractionCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    } 

    
    dispatch_async(dispatch_get_main_queue(), ^{
        // Display in the table cell
        AttractionsModel *attraction =  [[[DataManager sharedInstance] getTodData] objectForKey:keys[indexPath.section]][indexPath.row];

        [cell.parkImageView sd_setImageWithURL:[NSURL URLWithString:attraction.Image]
                              placeholderImage:[UIImage imageNamed:@"default.JPG"]];
        cell.parkName.text = attraction.ParkName;
        cell.name.text = attraction.Name;
        cell.introduction.text = attraction.Introduction;

    });
    
        return cell;
}

-(void) tableView:(UITableView *)tableView didEndDisplayingCell:(AttractionCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath {
    cell.parkImageView.image = nil;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {

    [[DataManager sharedInstance] setSelectedIndex:indexPath];
    ParkDetailViewController *parkDetail = [ParkDetailViewController storyboardInstance];
    [self.navigationController pushViewController:parkDetail  animated:true];
}
@end
