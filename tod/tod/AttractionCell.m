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
- (void)layoutSubviews {
    [super layoutSubviews];
    self.parkImageView.frame = CGRectMake(5,0,112,120);
}
@end
