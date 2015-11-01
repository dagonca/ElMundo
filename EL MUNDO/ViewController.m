//
//  ViewController.m
//  weGo
//
//  Created by Dani Gonzalez castillo on 5/11/14.
//  Copyright (c) 2014 Dani Gonzalez castillo. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"



@interface ViewController () <UIScrollViewDelegate,UIAlertViewDelegate>

@property (nonatomic, strong) UIScrollView *scrollView;
@property (nonatomic, strong) UIPageControl *pageControl;
@property (nonatomic, strong) UIView *navbarView;



@property (nonatomic, strong) UILabel *navTitleLabel1;
@property (nonatomic, strong) UILabel *navTitleLabel2;
@property (nonatomic, strong) UILabel *navTitleLabel3;
@property (nonatomic, strong) UILabel *navTitleLabel4;






@end

@implementation ViewController
@synthesize ImageView1,ImageView2,ImageView3,ImageView4;
@synthesize labelColeciones,labelPortada,labelSecciones,labelTendencias,Seccion;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}


- (void)viewDidLoad
{
    

    
    float Wfram = CGRectGetWidth(self.view.frame);
    
    
    self.scrollView = [[UIScrollView alloc] initWithFrame:self.view.frame];
    self.scrollView.backgroundColor = [UIColor clearColor];
    self.scrollView.pagingEnabled = YES;
    self.scrollView.showsHorizontalScrollIndicator = NO;
    self.scrollView.showsVerticalScrollIndicator = NO;
    self.scrollView.delegate = self;
    self.scrollView.bounces = NO;
    [self.view addSubview:self.scrollView];
    
    
    self.scrollView.contentSize = (CGSize){Wfram*3, CGRectGetHeight(self.view.frame)}; //Multiplicar por el numero de elementos"4"
    
    
    
    
    
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    ViewController *vc = [storyboard instantiateViewControllerWithIdentifier:@"ViewController"];
    ViewController *vc2 = [storyboard instantiateViewControllerWithIdentifier:@"ViewController2"];
    ViewController *vc3 = [storyboard instantiateViewControllerWithIdentifier:@"ViewController3"];
    ViewController *vc4 = [storyboard instantiateViewControllerWithIdentifier:@"ViewController4"];
    
    vc.view.frame = (CGRect){0, 0, Wfram, CGRectGetHeight(self.view.frame)};
    [self addChildViewController:vc];
    [self.scrollView addSubview:vc.view ];
    [vc didMoveToParentViewController:self];
    
    vc2.view.frame = (CGRect){Wfram*1, 0, Wfram, CGRectGetHeight(self.view.frame)};
    [self addChildViewController:vc2];
    [self.scrollView addSubview:vc2.view];
    [vc2 didMoveToParentViewController:self];
    
    
    vc3.view.frame = (CGRect){Wfram*2, 0, Wfram, CGRectGetHeight(self.view.frame)};
    [self addChildViewController:vc3];
    [self.scrollView addSubview:vc3.view];
    [vc3 didMoveToParentViewController:self];
    
    
    vc4.view.frame = (CGRect){Wfram*3, 0, Wfram, CGRectGetHeight(self.view.frame)};
    [self addChildViewController:vc4];
    [self.scrollView addSubview:vc4.view];
    [vc4 didMoveToParentViewController:self];
    
    
    self.navbarView = [[UIView alloc] init];
    
    
    self.labelTendencias = [ UILabel new];
    //self.ImageView1.image=[UIImage imageNamed:@"bike.png"];
    self.labelTendencias.text=@"Portada";
    self.labelTendencias.textColor=[UIColor whiteColor];
    self.labelTendencias.frame = (CGRect){140, 8, 40, 20};
    [self.navbarView addSubview:self.labelTendencias];
    
    self.labelPortada = [ UILabel new];
    //self.ImageView2.image=[UIImage imageNamed:@"chats.png"];
    self.labelPortada.text=@"SOCIAL";
    self.labelPortada.textColor=[UIColor whiteColor];
    self.labelPortada.frame = (CGRect){240, 8, 40, 20};
    [self.navbarView addSubview:self.labelPortada];
    
    self.labelSecciones = [ UILabel new];
    //self.ImageView3.image=[UIImage imageNamed:@"walk.png"];
  
        self.labelSecciones.text=Seccion;

    
    self.labelSecciones.text=@"  Perfil";
    self.labelSecciones.textColor=[UIColor whiteColor];
    self.labelSecciones.frame = (CGRect){340, 8, 40, 20};
    [self.navbarView addSubview:self.labelSecciones];
    
    self.labelColeciones = [ UILabel new];
  //  self.ImageView4.image=[UIImage imageNamed:@"user.png"];
    self.labelColeciones.text=@"Colecciones";
    self.labelColeciones.textColor=[UIColor whiteColor];
    self.labelColeciones.frame = (CGRect){440, 8, 40, 20};
    [self.navbarView addSubview:self.labelColeciones];
    
    self.pageControl = [[UIPageControl alloc] init];
    self.pageControl.frame = (CGRect){0, 57, 0, 0};
    self.pageControl.numberOfPages = 3;
    self.pageControl.currentPage = 0;
    self.pageControl.currentPageIndicatorTintColor = [UIColor whiteColor];
    self.pageControl.pageIndicatorTintColor = [UIColor grayColor];
    [self.navbarView addSubview:self.pageControl];
    
    [self.navigationController.navigationBar addSubview:self.navbarView];
    
    [super viewDidLoad];
   

    
    

    


}

 - (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillLayoutSubviews {
    [super viewWillLayoutSubviews];
    
    self.automaticallyAdjustsScrollViewInsets = NO;

    float Wfram = CGRectGetWidth(self.view.frame);

    self.navbarView.frame = (CGRect){0, -20, Wfram, 64};
    self.navbarView.backgroundColor=[UIColor colorWithRed:(4/255.0) green:(67/255.0) blue:(100/255.0) alpha:1];
   
    
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    
    CGFloat xOffset = scrollView.contentOffset.x;
    
    float Wfram = CGRectGetWidth(self.view.frame);

    if (Wfram == 375.000000) {
    self.labelTendencias.frame = (CGRect){150 - xOffset/(Wfram/100), 25, 105, 25};     //Anchura de los titulos iphone 6
    self.labelPortada.frame = (CGRect){250 - xOffset/(Wfram/100), 25, 105, 25};
    self.labelSecciones.frame = (CGRect){350 - xOffset/(Wfram/100), 25, 105, 25};
    self.labelColeciones.frame = (CGRect){450 - xOffset/(Wfram/100), 25, 105, 25};

    }else if(Wfram ==320.000000){
        self.labelTendencias.frame = (CGRect){120 - xOffset/(Wfram/100), 25, 105, 25};     //Anchura de los titulos iphone 5
        self.labelPortada.frame = (CGRect){220 - xOffset/(Wfram/100), 25, 105, 25};
        self.labelSecciones.frame = (CGRect){320 - xOffset/(Wfram/100), 25, 105, 25};
        self.labelColeciones.frame = (CGRect){420 - xOffset/(Wfram/100), 25, 105, 25};

    }else if (Wfram== 414.000000){
    self.labelTendencias.frame = (CGRect){167 - xOffset/(Wfram/100), 25, 105, 25};     //Anchura de los titulos
    self.labelPortada.frame = (CGRect){267 - xOffset/(Wfram/100), 25, 105, 25};
    self.labelSecciones.frame = (CGRect){367 - xOffset/(Wfram/100), 25, 105, 25};
    self.labelColeciones.frame = (CGRect){467 - xOffset/(Wfram/100), 25, 105, 25};
    }
    
    
    if (xOffset <= Wfram) {
        self.labelPortada.alpha = xOffset / Wfram ;
        self.labelTendencias.alpha = 1 - xOffset / Wfram;
        self.labelSecciones.alpha =  0;
        self.labelColeciones.alpha =  0;
    } if ((xOffset <= (Wfram*2)) && (xOffset > Wfram)) {
        self.labelPortada.alpha = 1 - (xOffset / (Wfram*2));
        self.labelSecciones.alpha = xOffset / (Wfram*2) ;
        self.labelColeciones.alpha = 1 - (xOffset / (Wfram*2));
    }
    
    if((xOffset > (Wfram*2)) && (xOffset <= (Wfram*3))){
        self.labelColeciones.alpha = xOffset / (Wfram*3) ;
        self.labelSecciones.alpha = 1 - (xOffset / (Wfram*3));    }
    
   
    
    
}

- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView {
    
    CGFloat xOffset = scrollView.contentOffset.x;
 
    
    if (xOffset !=0.00) {
       self.automaticallyAdjustsScrollViewInsets = NO;
    }
        
        
    float Wfram = CGRectGetWidth(self.view.frame);
    
    
    
    
    if (xOffset < 1.0) {
        self.pageControl.currentPage = 0;
    } else if (xOffset < Wfram+1) {
        self.pageControl.currentPage = 1;
    } else if (xOffset < (Wfram*2)+1){
        self.pageControl.currentPage = 2;
    }else if (xOffset < (Wfram*3)+1) {
        self.pageControl.currentPage = 3;
        
    }
    
}

@end
