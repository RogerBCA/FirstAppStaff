//
//  ViewController.m
//  Discovery
//
//  Created by Roger Cruz on 15/04/14.
//  Copyright (c) 2014 Roger Cruz. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    GrupoContenedores = @[self.Contenedor1,self.Contenedor2,self.Contenedor3];
    self.paginacionwellcome.numberOfPages = GrupoContenedores.count;
}

-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    CGRect scrollframe = self.MiScrollview.bounds;
    for (int k=0; k<GrupoContenedores.count; k++) {
        CGRect actual = scrollframe;
        actual.origin.x += actual.size.width*k;
        ((UIView *)GrupoContenedores[k]).frame = actual;
        [self.MiScrollview addSubview:GrupoContenedores[k]];
    }
    [self.MiScrollview setContentSize:CGSizeMake(self.MiScrollview.frame.size.width*GrupoContenedores.count, self.MiScrollview.frame.size.height)];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
