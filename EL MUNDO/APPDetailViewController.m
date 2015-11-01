//
//  APPDetailViewController.m
//  RSSreader
//
//  Created by Rafael Garcia Leiva on 08/04/13.
//  Copyright (c) 2013 Appcoda. All rights reserved.
//

#import "APPDetailViewController.h"

@implementation APPDetailViewController
@synthesize recipeDescripcion,recipeImagen,recipelink,recipeTitular,Titular,descripcion,imagen;

- (void)viewDidLoad {
    [super viewDidLoad];
    Titular.text=recipeTitular;
    descripcion.text=recipeDescripcion;
    NSURL *url = [NSURL URLWithString:recipeImagen];
    NSData *data = [[NSData alloc] initWithContentsOfURL:url];
    
    
  imagen.image = [UIImage imageWithData:data];

    
    
}
- (IBAction)atras:(id)sender {
    [self.presentingViewController dismissViewControllerAnimated:YES completion:nil];
}
- (IBAction)IrNoticia:(id)sender {
    [[UIApplication sharedApplication]
     openURL:[NSURL URLWithString:recipelink]];

}

@end
