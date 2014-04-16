//
//  NosotrosViewController.m
//  Discovery
//
//  Created by Roger Cruz on 16/04/14.
//  Copyright (c) 2014 Roger Cruz. All rights reserved.
//

#import "NosotrosViewController.h"
#import "SWRevealViewController.h"

@interface NosotrosViewController ()

@end

@implementation NosotrosViewController

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
    _sidebarButton.target = self.revealViewController;
    _sidebarButton.action = @selector(revealToggle:);
    
    // Add pan gesture to hide the sidebar
    [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
