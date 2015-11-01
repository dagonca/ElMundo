//
//  APPTableViewCell.h
//  RSSreader
//
//  Created by Dani Gonzalez castillo on 23/11/14.
//  Copyright (c) 2014 Appcoda. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface APPTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *titulo;
@property (weak, nonatomic) IBOutlet UITextView *descripcion;
@property (weak, nonatomic) IBOutlet UIImageView *imagen;

@end
