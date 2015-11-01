//
//  ViewController.h
//  weGo
//
//  Created by Dani Gonzalez castillo on 5/11/14.
//  Copyright (c) 2014 Dani Gonzalez castillo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (nonatomic, strong) UIImageView *ImageView1;
@property (nonatomic, strong) UIImageView *ImageView2;
@property (nonatomic, strong) UIImageView *ImageView3;
@property (nonatomic, strong) UIImageView *ImageView4;


@property (nonatomic, strong) UILabel *labelTendencias;
@property (nonatomic, strong) UILabel *labelPortada;
@property (nonatomic, strong) UILabel *labelSecciones;
@property (nonatomic, strong) UILabel *labelColeciones;


@property (strong, nonatomic) IBOutlet UIView *view;
@property (strong, nonatomic) NSMutableString *Seccion;

@end

