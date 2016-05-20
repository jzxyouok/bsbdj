//
//  JQMeViewController.m
//  百思不得姐
//
//  Created by 王家齐 on 16/5/19.
//  Copyright © 2016年 王家齐. All rights reserved.
//

#import "JQMeViewController.h"

@interface JQMeViewController ()

@end

@implementation JQMeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 设置导航栏标题
    self.navigationItem.title = @"我的";
    
    // 设置导航栏右边的按钮
    UIBarButtonItem *settingItem = [UIBarButtonItem itemWithImage:@"mine-setting-icon" lightImage:@"mine-setting-icon-click" target:self action:@selector(settingClick)];
    UIBarButtonItem *moonItem = [UIBarButtonItem itemWithImage:@"mine-moon-icon" lightImage:@"mine-moon-icon-click" target:self action:@selector(moonClick)];
    self.navigationItem.rightBarButtonItems = @[settingItem, moonItem];
    
    // 设置背景色
    self.view.backgroundColor = JQGlobalBg;
}

- (void)settingClick
{
    JQLogFunc;
}

- (void)moonClick
{
    JQLogFunc;
}

@end
