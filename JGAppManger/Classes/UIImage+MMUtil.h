//
//  UIImage+MMUtil.h
//  MMGoblins
//
//  Created by JGPeng on 2019/5/21.
//  Copyright © 2019 彭金光. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (MMUtil)


/**
 通过颜色构造图片的方法

 @param color 颜色
 @param size 尺寸
 @return 相应的图片
 */
+ (UIImage *)imageWithColor:(UIColor *)color size:(CGSize)size;

@end

NS_ASSUME_NONNULL_END
