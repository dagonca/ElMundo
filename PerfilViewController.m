//
//  PerfilViewController.m
//  EL MUNDO
//
//  Created by Dani Gonzalez castillo on 29/11/14.
//  Copyright (c) 2014 Dani Gonzalez castillo. All rights reserved.
//

#import "PerfilViewController.h"
#import "IniciarSesionViewController.h"
#import "CollectionViewCell.h"
#import "InfoViewController.h"

@interface PerfilViewController (){
    NSArray *Descripcion;
    NSArray *imagenes;

}

@end

@implementation PerfilViewController
@synthesize img,nombre,distancia,slider,cellection;



-(void)viewWillAppear:(BOOL)animated{
    
    NSUserDefaults *def = [NSUserDefaults standardUserDefaults];
    nombre.text=[def objectForKey:@"usuario"];
    
    
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Descripcion =[[NSArray alloc] initWithObjects:@"125 like´s",@"21 like´s”.",@"5 like´s", nil];
    imagenes = [NSArray arrayWithObjects:
                [UIImage imageNamed:@"video1.jpg"],
                [UIImage imageNamed:@"video2.jpg"],
                [UIImage imageNamed:@"video3.jpg"],
                nil];

    
    
    NSUserDefaults *def = [NSUserDefaults standardUserDefaults];
    distancia.text=[def objectForKey:@"distancia"];

    [slider setValue:[[NSUserDefaults standardUserDefaults] floatForKey:@"distancia"]];
    
    self.img.layer.cornerRadius = self.img.frame.size.width / 2;
    self.img.clipsToBounds = YES;
    self.img.layer.borderWidth = 2.0f;
    self.img.layer.borderColor = [UIColor colorWithRed:(4/255.0) green:(67/255.0) blue:(100/255.0) alpha:1].CGColor;

    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)slider:(id)sender {
    self.distancia.text = [NSString stringWithFormat:@"%.0f", self.slider.value];
  
    NSUserDefaults *def3 = [NSUserDefaults standardUserDefaults];
    [def3 setObject:distancia.text forKey:@"distancia"];
    [def3 synchronize];

    
}
- (IBAction)Signup:(id)sender {
    IniciarSesionViewController *second=[[IniciarSesionViewController alloc]initWithNibName:nil bundle:nil];
    [self presentModalViewController:second animated:YES];

}

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}


-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return [Descripcion count];
}


-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *cellIdentifier = @"Cell";
    CollectionViewCell *cell = (CollectionViewCell *)[collectionView dequeueReusableCellWithReuseIdentifier:cellIdentifier forIndexPath:indexPath];
    
    
    
    
    cell.nombre.text = [Descripcion objectAtIndex:indexPath.row];
    cell.imagen.image = [imagenes objectAtIndex:indexPath.row];
   
    
    
    
    return cell;
}

- (IBAction)Add:(id)sender {
   
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:  @"Publicacion añadida"                                                   message:nil
                                                      delegate: self
                                             cancelButtonTitle:nil
                                             otherButtonTitles:@"Ok",nil];
        
        
        [alert show];

}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"Info"]) {
        NSArray *indexPaths = [self.cellection indexPathsForSelectedItems];
        InfoViewController *destViewController = segue.destinationViewController;
        NSIndexPath *indexPath = [indexPaths objectAtIndex:0];
        
        //destViewController.recipeImageName = [recipeImages[indexPath.section] objectAtIndex:indexPath.row];
        
        
       
        UIImage *image = [imagenes objectAtIndex:indexPath.row];
        destViewController.Foto = image;
        
       
        
        
    }
}


@end
