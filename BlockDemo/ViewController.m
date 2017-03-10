//
//  ViewController.m
//  BlockDemo
//
//  Created by 纵昂 on 2017/3/9.
//  Copyright © 2017年 纵昂. All rights reserved.
//

#import "ViewController.h"
#import "FirstViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIButton * button = [UIButton buttonWithType:UIButtonTypeSystem];
    button.frame = CGRectMake(100, 100, 100, 50);
    [button setTitle:@"点击跳转页面" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(click) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];

}
-(void)click{
    
    FirstViewController * first = [[FirstViewController alloc]init];
    
    first.block = ^(UIColor *color){
        
        self.view.backgroundColor =color ;
        
    };
    [self presentViewController:first animated:YES completion:nil];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
