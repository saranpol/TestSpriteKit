//
//  SpriteViewController.m
//  SpriteWalkthrough
//
//  Created by saranpol on 8/27/56 BE.
//  Copyright (c) 2556 saranpol. All rights reserved.
//

#import "SpriteViewController.h"

#import <SpriteKit/SpriteKit.h>

#import "HelloScene.h"

@interface SpriteViewController ()

@end

@implementation SpriteViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    SKView *spriteView = (SKView *)self.view;
    spriteView.showsDrawCount = YES;
    spriteView.showsNodeCount = YES;
    spriteView.showsFPS = YES;
}

- (BOOL)prefersStatusBarHidden {
    return YES;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillAppear:(BOOL)animated
{
    CGRect screenRect = [[UIScreen mainScreen] bounds];
    CGFloat w = screenRect.size.width;
    CGFloat h = screenRect.size.height;
    CGSize s;
    if(w<h)
        s = CGSizeMake(w, h);
    else
        s = CGSizeMake(h, w);
    
    HelloScene* hello = [[HelloScene alloc] initWithSize:s];
    SKView *spriteView = (SKView *)self.view;
    [spriteView presentScene:hello];
}




@end
