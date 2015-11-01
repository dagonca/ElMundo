//
//  InfoTableViewController.m
//  EL MUNDO
//
//  Created by Dani Gonzalez castillo on 25/11/14.
//  Copyright (c) 2014 Dani Gonzalez castillo. All rights reserved.
//

#import "InfoTableViewController.h"
#import "CustomCell.h"


@interface InfoTableViewController (){
    NSMutableArray *Titulo;
  
}


@end

@implementation InfoTableViewController
@synthesize recipeDescripcion,recipeImagen,recipelink,recipeTitular,Titular,descripcion,imagen,mensaje,tableView,tableview,imgPerfil,viewPubli,Foto,cont;
- (IBAction)cerrarPubli:(id)sender {
    viewPubli.hidden=YES;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Titular.text=recipeTitular;
    descripcion.text=recipeDescripcion;
    if ([cont isEqualToString:@"1"]) {
        imagen.image=Foto;
    }else{
  
    NSURL *url = [NSURL URLWithString:recipeImagen];
    NSData *data = [[NSData alloc] initWithContentsOfURL:url];
    
    
    imagen.image = [UIImage imageWithData:data];
    }
    
    Titulo =[[NSMutableArray alloc] initWithObjects:@"Comentario 1", nil];
    
    self.imgPerfil.layer.cornerRadius = self.imgPerfil.frame.size.width / 2;
    self.imgPerfil.clipsToBounds = YES;
    
}
- (IBAction)atras:(id)sender {
    [self.presentingViewController dismissViewControllerAnimated:YES completion:nil];
}
- (IBAction)IrNoticia:(id)sender {
    [[UIApplication sharedApplication]
     openURL:[NSURL URLWithString:recipeImagen]];
    
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    // Return the number of rows in the section.
    return Titulo.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    static NSString *CellIdentifier = @"Cell";
    
    CustomCell *Cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (!Cell) {
        Cell = [[CustomCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
        
    }
    
    Cell.Titulo.text = [Titulo objectAtIndex:indexPath.row];

    
    return Cell;
}
- (IBAction)enviarMensaje:(id)sender {
    [Titulo addObject:mensaje.text];
    [tableview reloadData];

    NSLog(@"enviado");
}






@end
