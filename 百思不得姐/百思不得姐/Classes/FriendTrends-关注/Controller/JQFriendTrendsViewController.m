//
//  JQFriendTrendsViewController.m
//  百思不得姐
//
//  Created by 王家齐 on 16/5/19.
//  Copyright © 2016年 王家齐. All rights reserved.
//

#import "JQFriendTrendsViewController.h"

@interface JQFriendTrendsViewController ()

@end

@implementation JQFriendTrendsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 设置导航栏标题
    self.navigationItem.title = @"我的关注";
    
    // 设置导航栏左边的按钮
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem  itemWithImage:@"friendsRecommentIcon" lightImage:@"friendsRecommentIcon-click" target:self action:@selector(friendsClick)];
    
    // 设置控制器view的背景颜色
    self.view.backgroundColor = JQGlobalBg;
}

- (void)friendsClick
{
    JQLogFunc;
}

@end
