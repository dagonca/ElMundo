//
//  RRSSViewController.m
//  EL MUNDO
//
//  Created by Dani Gonzalez castillo on 29/11/14.
//  Copyright (c) 2014 Dani Gonzalez castillo. All rights reserved.
//

#import "RRSSViewController.h"
#import "APPTableViewCell.h"
#import "InfoTableViewController.h"
@interface RRSSViewController (){
int draw;
    
    NSArray *Titulo;
    NSArray *Descripcion;
    NSArray *imagenes;

}



@end

@implementation RRSSViewController

@synthesize SeccionesMenu,openMenu,cultura,deportes,tecnologia,españa,internacional,economia,historia,tv,toros,motor,viajes,ciencia,img,img2,img3,tableView,l1,l2,l3,li1,li2,li3;



- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.img.layer.cornerRadius = self.img.frame.size.width / 2;
    self.img.clipsToBounds = YES;
    
    self.img2.layer.cornerRadius = self.img.frame.size.width / 2;
    self.img2.clipsToBounds = YES;

    self.img3.layer.cornerRadius = self.img.frame.size.width / 2;
    self.img3.clipsToBounds = YES;


    
    Titulo =[[NSArray alloc] initWithObjects:@"Una perra lleva casi dos años esperando en el hospital a su dueño que jamas volvera",@"Aznar cree que un exceso de leyes anticorrupcion hace imposible dedicarse a la politica",@"Gurtel tenia copia del DNI y la tarjeta aerea de Ana Mato para tramitar sus viajes gratis total", nil];
    Descripcion =[[NSArray alloc] initWithObjects:@"La fidelidad de los perros es a prueba de bombas. Da igual que haga frÌo, que llueva o que pasen muchos aÒos: si nuestro can nos ama, no nos olvidar· nunca.Un ejemplo de esta lealtad sin lÌmites es la historia de Masha. Esta perra mestiza acompaÒÛ hace casi dos aÒos a su dueÒo al hospital de la ciudad de Novosibirsk, en Siberia (Rusia). Su amo se empezÛ a encontrar mal y decidiÛ acudir a pedir ayuda mÈdica acompaÒado de su mascota. …l fue ingresado y Masha no volviÛ a saber nada m·s de Èl, ya que falleciÛ a las pocas horas.",
                  
                  
                  
                  
                  @"El expresidente del Gobierno ha subrayado que la corrupciÛn siempre menoscaba la democracia pero ha advertido de que una hiperregulaciÛn para evitar actuaciones corruptas lo ˙nico que puede hacer es favorecer la corrupciÛn.El expresidente del Gobierno JosÈ MarÌa Aznar ha hecho este viernes un llamamiento a atajar la corrupciÛn en EspaÒa y a evitar que cuaje en el paÌs el nacionalismo radical o bien el populismo, porque si arraigan, ha advertido, el fracaso est· servido.Aznar ha participado en la apertura del seminario internacional organizado en Barcelona por el Grupo de LÌderes Empresariales (LIDE) de Brasil, que preside Joao Doria Jr., un foro que ha reunido a unos 250 empresarios brasileÒos y espaÒoles.",
                  
                  
                  
                  
                  @"La UDEF localizÛ en la sede de Pasadena Viajes, la agencia de la trama, fotocopia de la documentaciÛn de los clientes VIP de la red de Correa. Entre ellos estaba las de la exministra, su marido, B·rcenas y otros imputados, pero tambiÈn las de Rajoy y su esposa.Sonriente. AsÌ se mostraba la ahora exministra de Sanidad Ana Mato en la fotografÌa del DNI cuya copia tenÌa en su poder la trama G¸rtel. Dos copias de este documento, tanto de su anverso como de su reverso, aparecieron entre la documentaciÛn que la Unidad de Delincuencia EconÛmica y Fiscal (UDEF) de la PolicÌa intervino en uno de los registros realizados al estallar el caso en febrero de 2009. Fue en la sede de Pasadena Viajes, la agencia que la red liderada por Francisco Correa utilizaba para gestionar los desplazamientos de sus integrantes y de sus clientes 'VIP'. TambiÈn aparecieron dos copias de su tarjeta de fidelizaciÛn a una compaÒÌa aÈrea, y las de su marido, el exsenador y exalcalde de Pozuelo de AlarcÛn, Jes˙s Sep˙lveda, asÌ como del DNI y del carnÈ de conducir de este ˙ltimo. La investigaciÛn posterior ha permitido comprobar que ambos disfrutaron de viajes 'gratis total' asÌ como de alquiler de coches por un importe superior a los 50.000 euros. Unos regalos que han terminado cost·ndole el cargo a 	la dirigente 'popular'.",nil];
    
    
    
    imagenes = [NSArray arrayWithObjects:
                [UIImage imageNamed:@"noticia1.jpg"],
                [UIImage imageNamed:@"noticia2.jpg"],
                [UIImage imageNamed:@"noticia3.jpg"],
                nil];

    
    draw=0;
    SeccionesMenu.frame = CGRectMake(23, -219, 257, 134);
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
    
    img.image=[UIImage imageNamed:@"hombre1.jpg"];
    img2.image=[UIImage imageNamed:@"hombre2.jpg"];
    img3.image=[UIImage imageNamed:@"mujer4.jpg"];
    
    l1.text=@"Paco Gonzalez";
    l2.text=@"Daniel Castillo";
    l3.text=@"Julia Negredo";
    
    li1.text=@"720 like´s";
    li2.text=@"469 like´s";
    li3.text=@"254 like´s";
    
    
    
    
    [self revealMenu];
    
    
    
    
}

- (IBAction)btnInternacional:(id)sender {
    [self imgBlancas];
    [openMenu setTitle:@"Internacional" forState:UIControlStateNormal];
    [internacional setImage:[UIImage imageNamed:@"seccion_internacional_pulsado.png"] forState:UIControlStateNormal];
    
    
    img.image=[UIImage imageNamed:@"mujer3.png"];
    img2.image=[UIImage imageNamed:@"mujer2.jpg"];
    img3.image=[UIImage imageNamed:@"mujer1.jpg"];
    
    l1.text=@"Ana Castillo";
    l2.text=@"Nuria Gonzalez";
    l3.text=@"Marga Perez";
    
    li1.text=@"568 like´s";
    li2.text=@"321 like´s";
    li3.text=@"259 like´s";
    
    
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
        
        SeccionesMenu.frame = CGRectMake(16, 116, 345, 378);
        
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
        
        SeccionesMenu.frame = CGRectMake(16, -392, 345, 378);
        [self.view bringSubviewToFront:SeccionesMenu];
        
        [UIView commitAnimations];
    }
    
    
    
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // return feeds.count;
    
        return Titulo.count;
    }

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *CellIdentifier = @"Cell";
    
    APPTableViewCell *Cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (!Cell) {
        Cell = [[APPTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
        
    }
    
        Cell.titulo.text=[Titulo objectAtIndex:indexPath.row];
        Cell.descripcion.text =[Descripcion objectAtIndex:indexPath.row];
        Cell.imagen.image =[imagenes objectAtIndex:indexPath.row];
    
    
      return Cell;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"Info"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        InfoTableViewController *destViewController = segue.destinationViewController;
        
        NSString *stringDescripcion = [Descripcion objectAtIndex:indexPath.row];
        destViewController.recipeDescripcion=stringDescripcion;
        
        NSString *stringTitular =[Titulo objectAtIndex:indexPath.row];

        destViewController.recipeTitular=stringTitular;
        
        UIImage *image = [imagenes objectAtIndex:indexPath.row];
        destViewController.Foto = image;
        destViewController.cont = @"1";
        
        
        
        
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
