//
//  ContentedorViewController.m
//  Discovery
//
//  Created by Roger Cruz Alvarez on 21/04/14.
//  Copyright (c) 2014 Roger Cruz. All rights reserved.
//

#import "ContentedorViewController.h"

@interface ContentedorViewController ()

@end

@implementation ContentedorViewController

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
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
}


-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    superX =self.view.layer.position.x;
    topeDerecha = superX+self.leftMenuView.frame.size.width;
}


- (IBAction)seEstaHaciendoPanAlCenterView:(UIPanGestureRecognizer *)sender {
    
    CALayer *centerLayer = sender.view.layer;
    CGPoint translacion = [sender translationInView:self.view];
    
    CGPoint nuevoPoint = centerLayer.position;
    
    //
    nuevoPoint.x += translacion.x;
    //
    
    
    
    if (nuevoPoint.x >= superX) {
        self.leftMenuView.alpha = 1;
    }
    
    
    
    centerLayer.position = nuevoPoint;
    
    [sender setTranslation:CGPointZero inView:self.view];
    
    
    
    if (sender.state == UIGestureRecognizerStateEnded) {
        
        if (self.leftMenuView.alpha == 1) {
            
            if (centerLayer.position.x - superX > (self.leftMenuView.frame.size.width/2) ) {
                nuevoPoint.x = topeDerecha;
            }
            else
            {
                nuevoPoint.x = superX;
            }
        }
        
        [UIView animateWithDuration:0.4 delay:0 usingSpringWithDamping:0.7 initialSpringVelocity:1 options:UIViewAnimationOptionCurveEaseOut animations:^{
            
            centerLayer.position = nuevoPoint;
            
        }completion:nil];
        
    }
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)seApretoMenuIzquierda
{
    CALayer *centerLayer =self.centerView.layer;
    CGPoint nuevoPoint = centerLayer.position;
    
    if (centerLayer.position.x == topeDerecha) {
        
        nuevoPoint.x = superX;
    }
    else
    {
        self.leftMenuView.alpha = 1;
        nuevoPoint.x = topeDerecha;
    }
    
    [UIView animateWithDuration:0.4 delay:0 usingSpringWithDamping:0.7 initialSpringVelocity:1 options:UIViewAnimationOptionCurveEaseOut animations:^{
        
        centerLayer.position = nuevoPoint;
        
    }completion:nil];
    
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    
    if ([segue.identifier isEqualToString:@"noticiasSegue"]) {
        
        UINavigationController *navNoticias = segue.destinationViewController;
        
        NoticiasTableViewController *destino = navNoticias.viewControllers[0];
        destino.miDelegado = self;
        
    }
}


@end
