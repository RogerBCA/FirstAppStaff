//
//  NoticiasTableViewController.h
//  Discovery
//
//  Created by Roger Cruz Alvarez on 21/04/14.
//  Copyright (c) 2014 Roger Cruz. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol NoticiasDelegado <NSObject>

-(void)seApretoMenuIzquierda;

@end

@interface NoticiasTableViewController : UITableViewController

@property (nonatomic,strong) id<NoticiasDelegado> miDelegado;

@end
