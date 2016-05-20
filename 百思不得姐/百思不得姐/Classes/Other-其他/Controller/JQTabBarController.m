//
//  JQTabBarController.m
//  百思不得姐
//
//  Created by wangjiaqi on 16/5/19.
//  Copyright © 2016年 王家齐. All rights reserved.
//

#import "JQTabBarController.h"
#import "JQEssenceViewController.h"
#import "JQNewViewController.h"
#import "JQFriendTrendsViewController.h"
#import "JQMeViewController.h"
#import "JQTabBar.h"

@interface JQTabBarController ()

@end

@implementation JQTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 通过appearance统一设置所有UITabBarItem的文字属性
    // 后面带有UI_APPERANCE_SELECTOR的方法，都可以通过appearance对象来统一设置
    NSMutableDictionary *attrs = [NSMutableDictionary dictionary];
    attrs[NSFontAttributeName] = [UIFont systemFontOfSize:12];
    attrs[NSForegroundColorAttributeName] = [UIColor grayColor];
    
    NSMutableDictionary *selectedAttrs = [NSMutableDictionary dictionary];
    attrs[NSFontAttributeName] = attrs[NSFontAttributeName];
    attrs[NSForegroundColorAttributeName] = [UIColor grayColor];
    
    UITabBarItem *item = [UITabBarItem appearance];
    [item setTitleTextAttributes:attrs forState:UIControlStateNormal];
    [item setTitleTextAttributes:selectedAttrs forState:UIControlStateSelected];
    
    // 添加子控制器
    [self setupChildVc:[[JQEssenceViewController alloc] init] title:@"精华" image:@"tabBar_essence_icon" selectedImage:@"tabBar_essence_click_icon"];
    
    [self setupChildVc:[[JQNewViewController alloc] init] title:@"新帖" image:@"tabBar_new_icon" selectedImage:@"tabBar_new_click_icon"];
    
    [self setupChildVc:[[JQFriendTrendsViewController alloc] init] title:@"关注" image:@"tabBar_friendTrends_icon" selectedImage:@"tabBar_friendTrends_click_icon"];
    
    [self setupChildVc:[[JQMeViewController alloc] init] title:@"我" image:@"tabBar_me_icon" selectedImage:@"tabBar_me_click_icon"];
    
    // 更换自定义tabBar
    [self setValue:[[JQTabBar alloc] init] forKeyPath:@"tabBar"];
}

/**
 * 初始化子控制器
 */
- (void)setupChildVc:(UIViewController *)vc title:(NSString *)title image:(NSString *)image selectedImage:(NSString *)selectedImage
{
    // 设置文字和图片
    vc.tabBarItem.title = title;
    vc.tabBarItem.image = [UIImage imageNamed:image];
    vc.tabBarItem.selectedImage = [UIImage imageNamed:selectedImage];
    
    // 包装一个导航控制器，添加导航控制器为tabBarController的子控制器
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:vc];
    // 为导航控制器设置背景图片
    [nav.navigationBar setBackgroundImage:[UIImage imageNamed:@"navigationbarBackgroundWhite"] forBarMetrics:UIBarMetricsDefault];
    
    // 将导航控制器添加到子控制器
    [self addChildViewController:nav];
}

@end
