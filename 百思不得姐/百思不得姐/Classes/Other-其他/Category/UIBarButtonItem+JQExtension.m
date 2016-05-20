//
//  UIBarButtonItem+JQExtension.m
//  百思不得姐
//
//  Created by mzzdxt on 16/5/20.
//  Copyright © 2016年 mzzdxt. All rights reserved.
//

#import "UIBarButtonItem+JQExtension.h"

@implementation UIBarButtonItem (JQExtension)

+(instancetype)itemWithImage:(NSString *)image lightImage:(NSString *)lightImage target:(id)target action:(SEL)action
{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setBackgroundImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    [button setBackgroundImage:[UIImage imageNamed:lightImage] forState:UIControlStateHighlighted];
    
    // 设置按钮尺寸和背景图片大小相同
    button.size = button.currentBackgroundImage.size;
    
    // 为按钮添加点击事件
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    
    return [[self alloc] initWithCustomView:button];
}

@end
