//
//  JQRecommendUser.h
//  百思不得姐
//
//  Created by mzzdxt on 16/5/24.
//  Copyright © 2016年 mzzdxt. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JQRecommendUser : NSObject

/** 头像 */
@property (nonatomic, copy) NSString *header;

/** 粉丝数 */
@property (nonatomic, assign) NSInteger fans_count;

/** 昵称 */
@property (nonatomic, copy) NSString *screen_name;

@end
