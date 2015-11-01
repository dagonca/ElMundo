//
//  IniciarSesionViewController.m
//  weGo
//
//  Created by Dani Gonzalez castillo on 5/11/14.
//  Copyright (c) 2014 Dani Gonzalez castillo. All rights reserved.
//
#import "AppDelegate.h"
#import "IniciarSesionViewController.h"


@interface IniciarSesionViewController (){
    
    NSString *Usuario;
    NSString *Password;
    NSString *EMAIL;
    
}

@end

@implementation IniciarSesionViewController
@synthesize name,password;
@synthesize username,userpassword,mail,regBtn,iniBtn,viewg,viewAcceso,viewRegistro,segment,StringReg,StringReg2;

-(void)viewWillAppear:(BOOL)animated{
    NSUserDefaults *def = [NSUserDefaults standardUserDefaults];
    Usuario=[def objectForKey:@"usuario"];
    
    
   // StringReg = [[NSString alloc] initWithString:[NSString stringWithFormat:@"%@",Usuario]];
    
    NSUserDefaults *def2 = [NSUserDefaults standardUserDefaults];
    Password=[def2 objectForKey:@"pass"];
    
    
    //StringReg2 = [[NSString alloc] initWithString:[NSString stringWithFormat:@"%@",Password]];
    
    NSLog(@"hoasl");
    
}

- (void)viewDidLoad {
    viewAcceso.frame=(CGRect){0, 380, 320, 188 };
    viewRegistro.frame=(CGRect){0, 380, 320, 188 };
    [super viewDidLoad];
    
    username.delegate=self;
    password.delegate=self;
    mail.delegate=self;
    name.delegate=self;
    userpassword.delegate=self;
    
    self.regBtn.layer.cornerRadius=10.0f;
    self.regBtn.clipsToBounds = YES;

    
    self.name.text=nil;
    self.password.text=nil;
    self.iniBtn.layer.cornerRadius=10.0f;
    self.iniBtn.clipsToBounds = YES;

    viewRegistro.hidden=YES;
    
    // Do any additional setup after loading the view from its nib.
}
- (IBAction)segmentControl:(id)sender {
    if(segment.selectedSegmentIndex == 0){
        viewAcceso.hidden=NO;
        viewRegistro.hidden=YES;
        
        NSLog(@"usuario = %@",Usuario);
        NSLog(@"password = %@",Password);
        
    }
    if(segment.selectedSegmentIndex == 1){
        viewAcceso.hidden=YES;
        viewRegistro.hidden=NO;
        
    }

}
- (IBAction)IniciarSesion:(id)sender {
    
    NSLog(@"usuario = %@",Usuario);
    NSLog(@"password = %@",Password);
    
    if ([name.text isEqualToString:[NSString stringWithFormat:@"%@",Usuario]] && [password.text isEqualToString:[NSString stringWithFormat:@"%@",Password]]) {
        
        [self.presentingViewController dismissViewControllerAnimated:YES completion:nil];

        
    }else{
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Fallo al Registrarse"
                                                        message:nil
                                                       delegate:self
                                              cancelButtonTitle:@"Ok"
                                              otherButtonTitles: nil];
        [alert show];
        
    }
    
  
    
}
     
- (void)textFieldDidBeginEditing:(UITextField *)textField {
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationDelegate:self];
    [UIView setAnimationDuration:0.5];
    [UIView setAnimationBeginsFromCurrentState:YES];
    viewg.frame = CGRectMake(viewg.frame.origin.x, (viewg.frame.origin.y - 260.0), viewg.frame.size.width, viewg.frame.size.height);
    [UIView commitAnimations];
}

- (void)textFieldDidEndEditing:(UITextField *)textField {
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationDelegate:self];
    [UIView setAnimationDuration:0.5];
    [UIView setAnimationBeginsFromCurrentState:YES];
    viewg.frame = CGRectMake(viewg.frame.origin.x, (viewg.frame.origin.y + 260.0), viewg.frame.size.width, viewg.frame.size.height);
    [UIView commitAnimations];
}




- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    
    UITouch *touch = [[event allTouches] anyObject];
    if ([username isFirstResponder] && [touch view] != username) {
        [username resignFirstResponder];
    }
    if ([userpassword isFirstResponder] && [touch view] != password) {
        [userpassword resignFirstResponder];
    }
    
    if ([mail isFirstResponder] && [touch view] != mail) {
        [mail resignFirstResponder];
    }
    if ([password isFirstResponder] && [touch view] != mail) {
        [password resignFirstResponder];
    }
    if ([name isFirstResponder] && [touch view] != mail) {
        [name resignFirstResponder];
    }
    
    [super touchesBegan:touches withEvent:event];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)registrar:(id)sender {
    Usuario=username.text;
    Password=userpassword.text;
    EMAIL=mail.text;
    
    
    
    NSUserDefaults *def = [NSUserDefaults standardUserDefaults];
    [def setObject:Usuario forKey:@"usuario"];
    [def synchronize];
    
    NSUserDefaults *def2 = [NSUserDefaults standardUserDefaults];
    [def2 setObject:Password forKey:@"pass"];
    [def2 synchronize];

    
    
    NSLog(@"indicador de registro FINAL= %@",StringReg);
    
    NSLog(@"usuario = %@",Usuario);
    NSLog(@"password = %@",Password);

    [self.presentingViewController dismissViewControllerAnimated:YES completion:nil];
}


     
@end