//
//  JQRecommendCategory.m
//  百思不得姐
//
//  Created by mzzdxt on 16/5/24.
//  Copyright © 2016年 mzzdxt. All rights reserved.
//

#import "JQRecommendCategory.h"

@implementation JQRecommendCategory

- (NSMutableArray *)users
{
    if (!_users) {
        _users = [NSMutableArray array];
    }
    return _users;
}

@end
