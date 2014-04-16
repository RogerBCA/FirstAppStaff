//
//  ViewController.h
//  Discovery
//
//  Created by Roger Cruz on 15/04/14.
//  Copyright (c) 2014 Roger Cruz. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIScrollViewDelegate>
{
    NSArray *GrupoContenedores;
}

@property (weak, nonatomic) IBOutlet UIScrollView *MiScrollview;
@property (strong, nonatomic) IBOutlet UIView *Contenedor1;
@property (strong, nonatomic) IBOutlet UIView *Contenedor2;
@property (strong, nonatomic) IBOutlet UIView *Contenedor3;
@property (weak, nonatomic) IBOutlet UIPageControl *paginacionwellcome;

@end