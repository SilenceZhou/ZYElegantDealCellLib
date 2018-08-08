//
//  UIColor+ZYConvenient.m
//  ZYElegantDealCellLib_Example
//
//  Created by SilenceZhou on 2018/8/9.
//  Copyright © 2018年 SilenceZhou. All rights reserved.
//

#import "UIColor+ZYConvenient.h"

@implementation UIColor (ZYConvenient)
+ (UIColor *)randomColor
{
    return [UIColor colorWithRed:arc4random_uniform(255)/255.0
                           green:arc4random_uniform(255)/255.0
                            blue:arc4random_uniform(255)/255.0
                           alpha:1];
}

@end
