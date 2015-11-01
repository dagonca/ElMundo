//
//  RRSSTableViewController.m
//  EL MUNDO
//
//  Created by Dani Gonzalez castillo on 28/11/14.
//  Copyright (c) 2014 Dani Gonzalez castillo. All rights reserved.
//

#import "RRSSTableViewController.h"
#import "IniciarSesionViewController.h"
#import <CoreLocation/CoreLocation.h>
@interface RRSSTableViewController (){
       int draw;
}

@end

@implementation RRSSTableViewController
@synthesize SeccionesMenu,openMenu,tableView,cultura,deportes,tecnologia,españa,internacional,economia,historia,tv,toros,motor,viajes,ciencia;



- (void)viewDidLoad {
    [super viewDidLoad];
     draw=0;
        
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}
- (IBAction)OpenMenu:(id)sender {
    [self revealMenu];
    
}

- (IBAction)btnespaña:(id)sender {
    [self imgBlancas];
    [openMenu setTitle:@"España" forState:UIControlStateNormal];
    [españa setImage:[UIImage imageNamed:@"seccion_espana_pulsado.png"] forState:UIControlStateNormal];
    [self revealMenu];
    
    
    
    
}

- (IBAction)btnInternacional:(id)sender {
    [self imgBlancas];
    [openMenu setTitle:@"Internacional" forState:UIControlStateNormal];
    [internacional setImage:[UIImage imageNamed:@"seccion_internacional_pulsado.png"] forState:UIControlStateNormal];
    
    [self revealMenu];
    
}

- (IBAction)btnEconomia:(id)sender {
    [self imgBlancas];
    [openMenu setTitle:@"Economia" forState:UIControlStateNormal];
    [economia setImage:[UIImage imageNamed:@"seccion_economia_pulsado.png"] forState:UIControlStateNormal];
    [self revealMenu];
    
}

- (IBAction)btnCultura:(id)sender {
    [self imgBlancas];
    [openMenu setTitle:@"Cultura" forState:UIControlStateNormal];
    [cultura setImage:[UIImage imageNamed:@"seccion_cultura_pulsado.png"] forState:UIControlStateNormal];
    [self revealMenu];
    
}

- (IBAction)btnDeportes:(id)sender {
    [self imgBlancas];
    [openMenu setTitle:@"Deportes" forState:UIControlStateNormal];
    [deportes setImage:[UIImage imageNamed:@"seccion_deportes_pulsado.png"] forState:UIControlStateNormal];
    [self revealMenu];
    
}

- (IBAction)btnTecnologia:(id)sender {
    [self imgBlancas];
    [openMenu setTitle:@"Tecnologia" forState:UIControlStateNormal];
    [tecnologia setImage:[UIImage imageNamed:@"seccion_tecnologia_pulsado.png"] forState:UIControlStateNormal];
    [self revealMenu];
    
}
- (IBAction)btnCiencia:(id)sender {
    [self imgBlancas];
    [openMenu setTitle:@"Ciencia" forState:UIControlStateNormal];
    [ciencia setImage:[UIImage imageNamed:@"seccion_ciencia_pulsado.png"] forState:UIControlStateNormal];
    [self revealMenu];
    
}

- (IBAction)btnMotor:(id)sender {
    [self imgBlancas];
    [openMenu setTitle:@"Motor" forState:UIControlStateNormal];
    [motor setImage:[UIImage imageNamed:@"seccion_motor_pulsado2.png"] forState:UIControlStateNormal];
    [self revealMenu];
    
}


- (IBAction)btnViajes:(id)sender {
    [self imgBlancas];
    [openMenu setTitle:@"Viajes" forState:UIControlStateNormal];
    [viajes setImage:[UIImage imageNamed:@"seccion_viajes_pulsado.png"] forState:UIControlStateNormal];
    [self revealMenu];
    
}
- (IBAction)btnHistoria:(id)sender {
    [self imgBlancas];
    [openMenu setTitle:@"Historia" forState:UIControlStateNormal];
    [historia setImage:[UIImage imageNamed:@"seccion_historia_pulsado.png"] forState:UIControlStateNormal];
    [self revealMenu];
    
}
- (IBAction)btnTV:(id)sender {
    [self imgBlancas];
    [openMenu setTitle:@"TV" forState:UIControlStateNormal];
    [tv setImage:[UIImage imageNamed:@"seccion_tv_pulsado.png"] forState:UIControlStateNormal];
    [self revealMenu];
    
}
- (IBAction)btnToros:(id)sender {
    [self imgBlancas];
    [openMenu setTitle:@"Toros" forState:UIControlStateNormal];
    [toros setImage:[UIImage imageNamed:@"seccion_toros_pulsado.png"] forState:UIControlStateNormal];
    [self revealMenu];
    
}

-(void)imgBlancas{
    [españa setImage:[UIImage imageNamed:@"seccion_espana_sinpulsar.png"] forState:UIControlStateNormal];
    [internacional setImage:[UIImage imageNamed:@"seccion_internacional_sinpulsar.png"] forState:UIControlStateNormal];
    [economia setImage:[UIImage imageNamed:@"seccion_economia_sinpulsar.png"] forState:UIControlStateNormal];
    [cultura setImage:[UIImage imageNamed:@"seccion_cultura_sinpulsar.png"] forState:UIControlStateNormal];
    [deportes setImage:[UIImage imageNamed:@"seccion_deportes_sinpulsar.png"] forState:UIControlStateNormal];
    [tecnologia setImage:[UIImage imageNamed:@"seccion_tecnologia_sinpulsar.png"] forState:UIControlStateNormal];
    [ciencia setImage:[UIImage imageNamed:@"seccion_ciencia_sinpulsar.png"] forState:UIControlStateNormal];
    [motor setImage:[UIImage imageNamed:@"seccion_motor_sinpulsar2.png"] forState:UIControlStateNormal];
    [viajes setImage:[UIImage imageNamed:@"seccion_viajes_sinpulsar.png"] forState:UIControlStateNormal];
    [historia setImage:[UIImage imageNamed:@"seccion_historia_sinpulsar.png"] forState:UIControlStateNormal];
    [tv setImage:[UIImage imageNamed:@"seccion_tv_sinpulsar.png"] forState:UIControlStateNormal];
    [toros setImage:[UIImage imageNamed:@"seccion_toros_sinpulsar.png"] forState:UIControlStateNormal];
    
}

-(void)revealMenu{
    if (draw==0) {
        draw=1;
        
        [UIView beginAnimations:nil context:nil];
        [UIView setAnimationDuration:0.4];
        [UIView setAnimationDelay:0.0];
        [UIView setAnimationCurve:UIViewAnimationCurveEaseOut];
        
        [UIButton beginAnimations:nil context:nil];
        [UIButton setAnimationDuration:0.4];
        [UIButton setAnimationDelay:0.0];
        [UIButton setAnimationCurve:UIViewAnimationCurveEaseOut];
        
        SeccionesMenu.frame = CGRectMake(16, 146, 345, 378);
        
        [UIView commitAnimations];
    } else {
        draw=0;
        
        [UIView beginAnimations:nil context:nil];
        [UIView setAnimationDuration:0.4];
        [UIView setAnimationDelay:0.0];
        [UIView setAnimationCurve:UIViewAnimationCurveEaseOut];
        
        [UIButton beginAnimations:nil context:nil];
        [UIButton setAnimationDuration:0.4];
        [UIButton setAnimationDelay:0.0];
        [UIButton setAnimationCurve:UIViewAnimationCurveEaseOut];
        
        SeccionesMenu.frame = CGRectMake(16, -332, 345, 378);
        [self.view bringSubviewToFront:SeccionesMenu];
        
        [UIView commitAnimations];
    }
    
    
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
