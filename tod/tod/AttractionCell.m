//
//  AtrractionCell.m
//  tod
//
//  Created by Bart Yang on 2017/8/13.
//  Copyright © 2017 Bart Yang. All rights reserved.
//

#import "AttractionCell.h"

@implementation AttractionCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
- (void)prepareForReuse {
    [super prepareForReuse];

    self.clearsContextBeforeDrawing = YES;
    self.contentView.clearsContextBeforeDrawing = YES;
    self.parkImageView.image = nil;
    //self.parkImageView.frame = CGRectMake(0, 0, 120, 120);
    self.parkName.text = @"";
    self.name.text =@"";
    self.introduction.text = @"";
    //self.frame = CGRectMake(0, 0, 375, 120);
    //self.contentView.frame = CGRectMake(0, 0, 375, 120);
}
@end
