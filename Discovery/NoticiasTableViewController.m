//
//  NoticiasTableViewController.m
//  Discovery
//
//  Created by Roger Cruz Alvarez on 21/04/14.
//  Copyright (c) 2014 Roger Cruz. All rights reserved.
//

#import "NoticiasTableViewController.h"

@interface NoticiasTableViewController ()

@end

@implementation NoticiasTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)menuIzquierdaPressed:(UIBarButtonItem *)sender {
    
    [self.miDelegado seApretoMenuIzquierda];
}

@end
