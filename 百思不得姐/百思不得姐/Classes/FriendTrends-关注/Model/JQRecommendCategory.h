//
//  JQRecommendCategory.h
//  百思不得姐
//
//  Created by mzzdxt on 16/5/24.
//  Copyright © 2016年 mzzdxt. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JQRecommendCategory : NSObject

/** id */
@property (nonatomic, assign) NSInteger id;

/** 总数 */
@property (nonatomic, assign) NSInteger count;

/** 名字 */
@property (nonatomic, copy) NSString *name;

/** 该类别对应的用户数据 */
@property (nonatomic, copy) NSMutableArray *users;

/** 总数 */
@property (nonatomic, assign) NSInteger total;

/** 当前页码 */
@property (nonatomic, assign) NSInteger currentPage;

@end
