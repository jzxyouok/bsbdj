//
//  UIBarButtonItem+JQExtension.h
//  百思不得姐
//
//  Created by mzzdxt on 16/5/20.
//  Copyright © 2016年 mzzdxt. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (JQExtension)

+ (instancetype)itemWithImage:(NSString *)image lightImage:(NSString *)lightImage target:(id)target action:(SEL)action;

@end
