//
//  UIImage+MMUtil.m
//  MMGoblins
//
//  Created by JGPeng on 2019/5/21.
//  Copyright © 2019 彭金光. All rights reserved.
//

#import "UIImage+MMUtil.h"

@implementation UIImage (MMUtil)

/**
 通过颜色构造图片的方法
 
 @param color 颜色
 @param size 尺寸
 @return 相应的图片
 */
+ (UIImage *)imageWithColor:(UIColor *)color size:(CGSize)size {
    if (!color || size.width <= 0 || size.height <= 0) return nil;
    CGRect rect = CGRectMake(0.0f, 0.0f, size.width, size.height);
    UIGraphicsBeginImageContextWithOptions(rect.size, NO, 0);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, color.CGColor);
    CGContextFillRect(context, rect);
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}

@end
