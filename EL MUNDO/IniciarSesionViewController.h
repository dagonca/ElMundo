//
//  IniciarSesionViewController.h
//  weGo
//
//  Created by Dani Gonzalez castillo on 5/11/14.
//  Copyright (c) 2014 Dani Gonzalez castillo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface IniciarSesionViewController : UIViewController<UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *name;
@property (weak, nonatomic) IBOutlet UITextField *password;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segment;


@property (weak, nonatomic) IBOutlet UITextField *username;
@property (weak, nonatomic) IBOutlet UITextField *userpassword;
@property (weak, nonatomic) IBOutlet UITextField *mail;
@property (weak, nonatomic) IBOutlet UIButton *regBtn;
@property (weak, nonatomic) IBOutlet UIButton *iniBtn;
@property (strong, nonatomic) IBOutlet UIView *viewg;
@property (weak, nonatomic) IBOutlet UIView *viewAcceso;
@property (weak, nonatomic) IBOutlet UIView *viewRegistro;

@property  NSString *StringReg;
@property  NSString *StringReg2;


@end
