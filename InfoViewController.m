//
//  InfoViewController.m
//  EL MUNDO
//
//  Created by Dani Gonzalez castillo on 29/11/14.
//  Copyright (c) 2014 Dani Gonzalez castillo. All rights reserved.
//

#import "InfoViewController.h"

@interface InfoViewController ()

@end

@implementation InfoViewController
@synthesize Foto,imagen;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    imagen.image=Foto;
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)bac:(id)sender {
    [self.presentingViewController dismissViewControllerAnimated:YES completion:nil];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (IBAction)Publicar:(id)sender {
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:  @"Su publicacion se ha enviado para revisar"                                                   message:nil
                                                  delegate: self
                                         cancelButtonTitle:nil
                                         otherButtonTitles:@"Ok",nil];
    
    
    [alert show];

}
- (IBAction)Borrar:(id)sender {
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:  @"Seguro que desea borrar su publicacion?"                                                   message:  nil
                                                  delegate: self
                                         cancelButtonTitle:@"Si"
                                         otherButtonTitles:@"No",nil];
    
    
    [alert show];
     [self.presentingViewController dismissViewControllerAnimated:YES completion:nil];

}

@end
