//
//  JQRecommendTagsViewController.m
//  百思不得姐
//
//  Created by mzzdxt on 16/5/24.
//  Copyright © 2016年 mzzdxt. All rights reserved.
//

#import "JQRecommendTagsViewController.h"
#import "JQRecommendTag.h"
#import "JQRecommendTagCell.h"
#import <AFNetworking.h>
#import <SVProgressHUD.h>
#import <MJExtension.h>

@interface JQRecommendTagsViewController()

/** 标签数据 */
@property (nonatomic, strong) NSArray *tags;

@end

static NSString * const JQTagsId = @"tag";

@implementation JQRecommendTagsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupTableView];
    
    [self loadTags];
}

- (void)setupTableView
{
    self.title = @"推荐标签";
    [self.tableView registerNib:[UINib nibWithNibName:NSStringFromClass([JQRecommendTagCell class]) bundle:nil] forCellReuseIdentifier:JQTagsId];
    self.tableView.rowHeight = 70;
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    self.tableView.backgroundColor = JQGlobalBg;
}

- (void)loadTags
{
    [SVProgressHUD show];
    [SVProgressHUD setDefaultMaskType:SVProgressHUDMaskTypeBlack];
    
    // 请求参数
    NSMutableDictionary *params = [NSMutableDictionary dictionary];
    params[@"a"] = @"tag_recommend";
    params[@"action"] = @"sub";
    params[@"c"] = @"topic";
    
    // 发送请求
    [[AFHTTPSessionManager manager] GET:@"http://api.budejie.com/api/api_open.php" parameters:params progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        self.tags = [JQRecommendTag mj_objectArrayWithKeyValuesArray:responseObject];
        [self.tableView reloadData];
        
        [SVProgressHUD dismiss];
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        [SVProgressHUD showErrorWithStatus:@"加载标签数据失败!"];
    }];
}

#pragma mark - Table view data source
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.tags.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    JQRecommendTagCell *cell = [tableView dequeueReusableCellWithIdentifier:JQTagsId];
    
    cell.recommendTag = self.tags[indexPath.row];
    
    return cell;
}

@end
