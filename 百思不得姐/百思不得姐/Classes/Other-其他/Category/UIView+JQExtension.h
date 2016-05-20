//
//  UIView+JQExtension.h
//  百思不得姐
//
//  Created by 王家齐 on 16/5/20.
//  Copyright © 2016年 王家齐. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (JQExtension)

/** 在分类中声明属性，只会生成方法的声明，不会声明方法的实现和带有下划线的成员变量 */
@property (nonatomic, assign) CGFloat x;
@property (nonatomic, assign) CGFloat y;
@property (nonatomic, assign) CGFloat width;
@property (nonatomic, assign) CGFloat height;

@property (nonatomic, assign) CGSize size;

@end
