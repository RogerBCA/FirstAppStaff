//
//  ContentedorViewController.h
//  Discovery
//
//  Created by Roger Cruz Alvarez on 21/04/14.
//  Copyright (c) 2014 Roger Cruz. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NoticiasTableViewController.h"

@interface ContentedorViewController : UIViewController <NoticiasDelegado>
{
    int topeDerecha;
    int superX;
}

@property (weak, nonatomic) IBOutlet UIView *leftMenuView;
@property (weak, nonatomic) IBOutlet UIView *centerView;


@end
