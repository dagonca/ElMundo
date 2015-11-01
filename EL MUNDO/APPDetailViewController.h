//
//  APPDetailViewController.h
//  RSSreader
//
//  Created by Rafael Garcia Leiva on 08/04/13.
//  Copyright (c) 2013 Appcoda. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface APPDetailViewController : UIViewController

@property (nonatomic, strong) NSString *recipelink;
@property (nonatomic, strong) NSString *recipeTitular;
@property (nonatomic, strong) NSString *recipeDescripcion;
@property (nonatomic, strong) NSString *recipeImagen;


@property (weak, nonatomic) IBOutlet UILabel *Titular;
@property (weak, nonatomic) IBOutlet UIImageView *imagen;
@property (weak, nonatomic) IBOutlet UITextView *descripcion;

@end
