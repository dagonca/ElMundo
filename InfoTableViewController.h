//
//  InfoTableViewController.h
//  EL MUNDO
//
//  Created by Dani Gonzalez castillo on 25/11/14.
//  Copyright (c) 2014 Dani Gonzalez castillo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface InfoTableViewController : UITableViewController<UITextFieldDelegate>

@property (strong, nonatomic) IBOutlet UITableView *tableview;

@property (nonatomic, strong) NSString *recipelink;
@property (nonatomic, strong) NSString *recipeTitular;
@property (nonatomic, strong) NSString *recipeDescripcion;
@property (nonatomic, strong) NSString *recipeImagen;
@property (nonatomic, strong) UIImage *Foto;
@property (nonatomic, strong) NSString *cont;

@property (weak, nonatomic) IBOutlet UILabel *Titular;
@property (weak, nonatomic) IBOutlet UIImageView *imagen;
@property (weak, nonatomic) IBOutlet UITextView *descripcion;
@property (weak, nonatomic) IBOutlet UITextField *mensaje;
@property (weak, nonatomic) IBOutlet UIImageView *imgPerfil;

@property (weak, nonatomic) IBOutlet UIView *viewPubli;
@end
