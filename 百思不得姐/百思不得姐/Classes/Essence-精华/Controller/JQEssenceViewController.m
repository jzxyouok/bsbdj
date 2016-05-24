//
//  JQEssenceViewController.m
//  百思不得姐
//
//  Created by 王家齐 on 16/5/19.
//  Copyright © 2016年 王家齐. All rights reserved.
//

#import "JQEssenceViewController.h"
#import "JQRecommendTagsViewController.h"


@interface JQEssenceViewController ()

@end

@implementation JQEssenceViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 设置导航栏标题
    self.navigationItem.titleView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"MainTitle"]];
    
    // 设置导航栏左边的按钮
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem  itemWithImage:@"MainTagSubIcon" lightImage:@"MainTagSubIconClick" target:self action:@selector(tagClick)];
    
    // 设置控制器view的背景颜色
    self.view.backgroundColor = JQGlobalBg;
}

- (void)tagClick
{
    JQRecommendTagsViewController *vc = [[JQRecommendTagsViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

@end
