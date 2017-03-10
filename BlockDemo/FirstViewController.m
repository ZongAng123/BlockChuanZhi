//
//  FirstViewController.m
//  BlockDemo
//
//  Created by 纵昂 on 2017/3/9.
//  Copyright © 2017年 纵昂. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton * button = [UIButton  buttonWithType:UIButtonTypeSystem];
    button.frame = CGRectMake(100, 100, 100, 50);
    button.backgroundColor = [UIColor orangeColor];
    [button setTitle:@"点击回调" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(click) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    
}
- (void)click{
    
    float a=arc4random()%256/255.0;
    float b=arc4random()%256/255.0;
    float c=arc4random()%256/255.0;
    UIColor*color=[UIColor colorWithRed:a green:b blue:c alpha:1];
    self.block(color);
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
}

@end
