//
//  SeccionesViewController.m
//  EL MUNDO
//
//  Created by Dani Gonzalez castillo on 25/11/14.
//  Copyright (c) 2014 Dani Gonzalez castillo. All rights reserved.
//

#import "SeccionesViewController.h"
#import "ViewController.h"
#import "APPDetailViewController.h"
#import "APPTableViewCell.h"
#import <CoreLocation/CoreLocation.h>

@interface SeccionesViewController (){
    int draw;
    NSXMLParser *parser;
    NSMutableArray *feeds;
    NSMutableDictionary *item;
    NSMutableString *title;
    NSMutableString *link;
    NSMutableString *descripcion;
    NSMutableString *imageUrl;
    NSString *element;
    NSString *Categoria;
    
        NSArray *Titulo;
        NSArray *Descripcion;
        NSArray *imagenes;
        NSArray *longitud;
        NSArray *latitud;

    int a;
    float currentlongitud;
    float currentlatitude;
    
    NSMutableArray *CercaniaTitulo;
    NSMutableArray *CercaniaDescripcion;
     NSMutableArray *CercaniaImagen;
    CLLocation *location2;
    NSString *distancia;
    
}


@end

@implementation SeccionesViewController
@synthesize SeccionesMenu,openMenu,tableView,cultura,deportes,tecnologia,españa,internacional,economia,historia,tv,toros,motor,viajes,ciencia,segment;

-(void)viewWillAppear:(BOOL)animated{
    

    
}


- (void)viewDidLoad {
    [super viewDidLoad];
    Categoria=@"http://www.elmundo.es/rss/hackathon/ciencia.xml";
    feeds = [[NSMutableArray alloc] init];
    NSURL *url = [NSURL URLWithString:Categoria];
    parser = [[NSXMLParser alloc] initWithContentsOfURL:url];
    [parser setDelegate:self];
    [parser setShouldResolveExternalEntities:NO];
    [parser parse];

    
    self.SeccionesMenu.layer.cornerRadius=10.0f;
    self.SeccionesMenu.clipsToBounds = YES;
    
    draw=0;
    
    SeccionesMenu.frame = CGRectMake(23, -219, 257, 134);
    
   

    
    CercaniaTitulo =[[NSMutableArray alloc] init];
    
    CercaniaDescripcion =[[NSMutableArray alloc] init];
    CercaniaImagen =[[NSMutableArray alloc] init];

    NSUserDefaults *def = [NSUserDefaults standardUserDefaults];
   distancia=[def objectForKey:@"distancia"];

    
     Titulo =[[NSArray alloc] initWithObjects:@"Cuando la voluntad alimenta",@"Una empresa de Púnica gestiona una cuenta de twitteros del PP”.",@"Piden 29 años para los acusados de matar a mujer para robarle un Porsche", nil];
    Descripcion =[[NSArray alloc] initWithObjects:@"El 9 de enero de 2014 despertaron los dos. Leandro acababa de abrir sus enormes ojos, negros como el azabache. Fue entonces cuando sus largas y afiladas pestañas, esas que parecen no caberle en su pequeña cara, comenzaron a agitarse. Allí estaba, recién nacido. Allí estaba ella, Erika Moya, su madre, quien también volvió a nacer. Fue mi regalo de Reyes (sonríe orgullosa). Su nacimiento me arregló la vida, fue como ¡Erika, reacciona, dos hostias, plas, plas! -hace el sonido y mueve las manos de derecha a izquierda, reproduciendo el gesto-. Me levanté de una pesadilla por él, que es mi ángel de la guarda, -mira al crío, que lo tiene en su regazo, con veneración, como una Maternidad- y continúa, ¡encima, ahora que ha empezado a decir ¡mamá! no sabes lo feliz que soy!, dice con una sonrisa amplia y desenfadada que le hace aún más joven de lo que ya es (20 años).",@"El consultor tecnológico Alejandro de Pedro Llorca, responsable de la empresa Eico y detenido como uno de los cabecillas del entramado corrupto de la Operación Púnica acusado de tráfico de influencias o cohecho, entre otros delitos, es el gestor de la cuenta de Twitter @twiterosPP.Esta red de influencia en las redes sociales, que usa como logo el sÍmbolo oficial del PP, está formada por 710 twitteros y se encargó, en enero de 2013, de liderar una campaña en las redes sociales para «contrarrestar» una información publicada por este diario que vinculaba al consejero de Presidencia e Interior y portavoz del Gobierno regional, Salvador Victoria, con la red Gürtel.Eico realizó a posteriori un informe de ocho páginas en el que decía que había «puesto en disposición» de la Comunidad de Madrid su lobby internetero para contrarrestar la información de EL MUNDO. Tal y como comprobó este periódico, en el documento se mencionan usuarios de Twitter que tienen desactivada la cuenta ya que nunca existieron. Es decir, cuentas falsas creadas ad hoc por la empresa vinculada a la red presuntamente corrupta Púnica.",@"El fiscal pide 29 años de prisión para cada uno de los dos acusados de matar en 2012 a una mujer de 40 años a la que atropellaron con el Porsche que le estaban robando, cuando trataba de impedir la sustracción en la rotonda del aparcamiento para empleados del Aeropuerto Adolfo Suárez-Madrid Barajas.El juicio por esta causa está señalado a partir del lunes en la Audiencia Provincial de Madrid y en la vista se sentarán en el banquillo Moisés L.C. y Aarón L.C., que se encuentran en prisión provisional y que además del delito de homicidio están acusados de otros tres de robo con violencia y uno de lesiones.", nil];
     longitud =[[NSArray alloc] initWithObjects:@"40.4287957",@"40.6015365”.",@"40.5675407", nil];
    latitud =[[NSArray alloc] initWithObjects:@"-3.6966072",@"-3.70851”.",@"-3.8743412", nil];
    imagenes = [NSArray arrayWithObjects:
                       [UIImage imageNamed:@"n1.jpg"],
                       [UIImage imageNamed:@"n2.jpg"],
                       [UIImage imageNamed:@"n3.jpg"],
                       nil];
    
    // Do any additional setup after loading the view.
    
    
    CLLocation *location1 = [[CLLocation alloc] initWithLatitude:40.505255 longitude:-3.695752];
    for (int j=0; j<Titulo.count; j++) {
        location2 = [[CLLocation alloc] initWithLatitude:[longitud[j] floatValue] longitude:[latitud[j] floatValue]];
        
        NSString *dis = [NSString stringWithFormat:@"%f",[location1 distanceFromLocation:location2]/1000.0f];
        NSLog(@"dis = %@",dis);
        if ([dis floatValue]<=[distancia floatValue]) {
            [CercaniaTitulo addObject:Titulo[j]];
             [CercaniaDescripcion addObject:Descripcion[j]];
            [CercaniaImagen addObject:imagenes[j]];
            
             NSLog(@"distancia = %@",distancia);
            
        }
        
    }
    
   
    
    
}






- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)SegmentControl:(id)sender {
    if(segment.selectedSegmentIndex == 0){
        a=0;
        NSUserDefaults *def = [NSUserDefaults standardUserDefaults];
        distancia=[def objectForKey:@"distancia"];
        [self viewDidLoad];
        [tableView reloadData];
        
    }
    if(segment.selectedSegmentIndex == 1){
        a=1;
        [tableView reloadData];

}
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



- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // return feeds.count;
    if (a==0) {
          return CercaniaTitulo.count;
    }else{
    return 5;
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *CellIdentifier = @"Cell";
    
    APPTableViewCell *Cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (!Cell) {
        Cell = [[APPTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
        
    }
    if (a==0) {
        Cell.titulo.text=[CercaniaTitulo objectAtIndex:indexPath.row];
        Cell.descripcion.text =[CercaniaDescripcion objectAtIndex:indexPath.row];
       Cell.imagen.image =[CercaniaImagen objectAtIndex:indexPath.row];
    }else{
         Cell.titulo.text = [[feeds objectAtIndex:indexPath.row] objectForKey: @"title"];
    Cell.descripcion.text = [[feeds objectAtIndex:indexPath.row] objectForKey: @"description"];
   

    NSURL *url = [NSURL URLWithString:[[feeds objectAtIndex:indexPath.row] objectForKey: @"url"]];
    NSData *data = [[NSData alloc] initWithContentsOfURL:url];
    
    Cell.imagen.image = [UIImage imageWithData:data];
    }
    
    return Cell;
}






- (void)parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName attributes:(NSDictionary *)attributeDict {
    
    element = elementName;
    
    if ([element isEqualToString:@"item"]) {
        
        item    = [[NSMutableDictionary alloc] init];
        title   = [[NSMutableString alloc] init];
        link    = [[NSMutableString alloc] init];
        descripcion = [[NSMutableString alloc] init];
        imageUrl    = [[NSMutableString alloc] init];
        
    }else if([element isEqualToString:@"media:content"]) {
        imageUrl = [attributeDict objectForKey:@"url"];
        //NSLog(@"Url:%@", imageUrl);
    }
    
    
}

- (void)parser:(NSXMLParser *)parser didEndElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName {
    
    if ([elementName isEqualToString:@"item"]) {
        
        [item setObject:title forKey:@"title"];
        [item setObject:link forKey:@"link"];
        [item setObject:descripcion forKey:@"description"];
        [item setObject:imageUrl forKey:@"url"];
        //NSLog(@"Url:%@", imageUrl);
        
        [feeds addObject:[item copy]];
        
    }
    
}

- (void)parser:(NSXMLParser *)parser foundCharacters:(NSString *)string {
    
    if ([element isEqualToString:@"title"]) {
        [title appendString:string];
    } else if ([element isEqualToString:@"link"]) {
        [link appendString:string];
    } else if ([element isEqualToString:@"description"]) {
        [descripcion appendString:string];
        descripcion=[descripcion stringByReplacingOccurrencesOfString:@"</p>" withString:@"\n"];
        descripcion=[descripcion stringByReplacingOccurrencesOfString:@"<p>" withString:@""];
        descripcion=[descripcion stringByReplacingOccurrencesOfString:@"<strong>" withString:@""];
        descripcion=[descripcion stringByReplacingOccurrencesOfString:@"</strong>" withString:@""];
        
    }
    
    
}

- (void)parserDidEndDocument:(NSXMLParser *)parser {
    
    [self.tableView reloadData];
    
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"Info"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        APPDetailViewController *destViewController = segue.destinationViewController;
        
        NSString *stringLink = [feeds[indexPath.row] objectForKey: @"link"];
        destViewController.recipelink= stringLink;
        
        NSString *stringTitular = [feeds[indexPath.row] objectForKey: @"title"];
        destViewController.recipeTitular=stringTitular;
        
        NSString *stringDescripcion = [feeds[indexPath.row] objectForKey: @"description"];
        destViewController.recipeDescripcion=stringDescripcion;
        
        NSString *stringImagen = [feeds[indexPath.row] objectForKey: @"url"];
        destViewController.recipeImagen=stringImagen;
        
        
        
        NSLog(@"%@",stringImagen);
        
        
        
        
        
    }
    
}




@end
