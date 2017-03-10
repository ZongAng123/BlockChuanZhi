//
//  FirstViewController.h
//  BlockDemo
//
//  Created by 纵昂 on 2017/3/9.
//  Copyright © 2017年 纵昂. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void (^MyBlock)(UIColor *);
@interface FirstViewController : UIViewController
@property(nonatomic ,strong )MyBlock block ;
@end
