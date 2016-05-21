//
//  JQNavigationController.m
//  百思不得姐
//
//  Created by wangjiaqi on 16/5/21.
//  Copyright © 2016年 mzzdxt. All rights reserved.
//

#import "JQNavigationController.h"

@interface JQNavigationController ()

@end

@implementation JQNavigationController

/**
 * 当第一次使用这个类的时候会调用一次，适合进行初始化操作
 */
+ (void)initialize
{
    // 当导航栏用在JQNavigationController中，appearance设置才会生效
    // UINavigationBar *bar = [UINavigationBar appearanceWhenContainedIn:[self class], nil];
    
     UINavigationBar *bar = [UINavigationBar appearance];
    // 为导航控制器设置背景图片
    [bar setBackgroundImage:[UIImage imageNamed:@"navigationbarBackgroundWhite"] forBarMetrics:UIBarMetricsDefault];
}

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

/**
 * 在这个方法中可以拦截所有push进来的控制器
 */
- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    // 只有push进来的不是第一个控制器才进行如下操作
    if(self.childViewControllers.count > 0)
    {
        // 设置导航栏的返回按钮
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        [button setTitle:@"返回" forState:UIControlStateNormal];
        [button setImage:[UIImage imageNamed:@"navigationButtonReturn"] forState:UIControlStateNormal];
        [button setImage:[UIImage imageNamed:@"navigationButtonReturnClick"] forState:UIControlStateHighlighted];
        button.size = CGSizeMake(70, 30);
        
        // 让按钮内部所有内容左对齐
        button.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        
        // 让按钮的内容往左偏移10
        button.contentEdgeInsets = UIEdgeInsetsMake(0, -10, 0, 0);
        
        [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [button setTitleColor:[UIColor redColor] forState:UIControlStateHighlighted];
        
        // 为按钮添加点击事件
        [button addTarget:self action:@selector(back) forControlEvents:UIControlEventTouchUpInside];
        
        // 修改导航栏左边的item
        viewController.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:button];
        
        // 隐藏TabBar
        viewController.hidesBottomBarWhenPushed = YES;
    }
    
    // 这句super的push要放在后面, 让viewController可以覆盖上面设置的leftBarButtonItem
    [super pushViewController:viewController animated:animated];
}

- (void)back
{
    [self popViewControllerAnimated:YES];
}

@end
