//
//  APPMasterViewController.m
//  RSSreader
//
//  Created by Rafael Garcia Leiva on 08/04/13.
//  Copyright (c) 2013 Appcoda. All rights reserved.
//

#import "APPMasterViewController.h"

#import "APPDetailViewController.h"
#import "APPTableViewCell.h"

@interface APPMasterViewController () {
    NSXMLParser *parser;
    NSMutableArray *feeds;
    NSMutableDictionary *item;
    NSMutableString *title;
    NSMutableString *link;
      NSMutableString *descripcion;
     NSMutableString *imageUrl;
    NSString *element;
}
@end

@implementation APPMasterViewController

- (void)awakeFromNib
{
    [super awakeFromNib];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    feeds = [[NSMutableArray alloc] init];
    NSURL *url = [NSURL URLWithString:@"http://www.elmundo.es/rss/hackathon/ciencia.xml"];
    parser = [[NSXMLParser alloc] initWithContentsOfURL:url];
    [parser setDelegate:self];
    [parser setShouldResolveExternalEntities:NO];
    [parser parse];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
   // return feeds.count;
    return 5;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *CellIdentifier = @"Cell";
    
    APPTableViewCell *Cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (!Cell) {
        Cell = [[APPTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
        
    }
    
   
    Cell.titulo.text = [[feeds objectAtIndex:indexPath.row] objectForKey: @"title"];
     Cell.descripcion.text = [[feeds objectAtIndex:indexPath.row] objectForKey: @"description"];
    

    NSURL *url = [NSURL URLWithString:[[feeds objectAtIndex:indexPath.row] objectForKey: @"url"]];
    NSData *data = [[NSData alloc] initWithContentsOfURL:url];
  
    
    Cell.imagen.image = [UIImage imageWithData:data];
 
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
