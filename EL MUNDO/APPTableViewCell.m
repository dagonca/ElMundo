//
//  APPTableViewCell.m
//  RSSreader
//
//  Created by Dani Gonzalez castillo on 23/11/14.
//  Copyright (c) 2014 Appcoda. All rights reserved.
//

#import "APPTableViewCell.h"

@implementation APPTableViewCell
@synthesize titulo,descripcion,imagen;

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
