//
//  PerfilViewController.h
//  EL MUNDO
//
//  Created by Dani Gonzalez castillo on 29/11/14.
//  Copyright (c) 2014 Dani Gonzalez castillo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PerfilViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *img;
@property (weak, nonatomic) IBOutlet UILabel *nombre;
@property (weak, nonatomic) IBOutlet UISlider *slider;
@property (weak, nonatomic) IBOutlet UILabel *distancia;

@property (weak, nonatomic) IBOutlet UICollectionView *cellection;


@end
