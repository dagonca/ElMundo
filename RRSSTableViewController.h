//
//  RRSSTableViewController.h
//  EL MUNDO
//
//  Created by Dani Gonzalez castillo on 28/11/14.
//  Copyright (c) 2014 Dani Gonzalez castillo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RRSSTableViewController : UITableViewController
@property (weak, nonatomic) IBOutlet UILabel *labelUsuario;


@property (weak, nonatomic) IBOutlet UIView *SeccionesMenu;
@property (weak, nonatomic) IBOutlet UIButton *openMenu;

@property (weak, nonatomic) IBOutlet UIButton *cultura;
@property (weak, nonatomic) IBOutlet UIButton *deportes;
@property (weak, nonatomic) IBOutlet UIButton *tecnologia;
@property (weak, nonatomic) IBOutlet UIButton *españa;
@property (weak, nonatomic) IBOutlet UIButton *internacional;
@property (weak, nonatomic) IBOutlet UIButton *economia;
@property (weak, nonatomic) IBOutlet UIButton *historia;
@property (weak, nonatomic) IBOutlet UIButton *tv;
@property (weak, nonatomic) IBOutlet UIButton *toros;
@property (weak, nonatomic) IBOutlet UIButton *motor;
@property (weak, nonatomic) IBOutlet UIButton *viajes;
@property (weak, nonatomic) IBOutlet UIButton *ciencia;




@end
