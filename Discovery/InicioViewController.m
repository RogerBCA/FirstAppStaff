//
//  InicioViewController.m
//  Discovery
//
//  Created by Roger Cruz on 16/04/14.
//  Copyright (c) 2014 Roger Cruz. All rights reserved.
//

#import "InicioViewController.h"
#import "SWRevealViewController.h"

@interface InicioViewController ()

@end

@implementation InicioViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    

    _sidebarButton.target = self.revealViewController;
    _sidebarButton.action = @selector(revealToggleAnimated:);
    
    // Set the gesture
    [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
