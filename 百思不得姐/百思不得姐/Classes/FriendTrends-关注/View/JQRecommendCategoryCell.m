//
//  JQRecommendCategoryCell.m
//  百思不得姐
//
//  Created by mzzdxt on 16/5/24.
//  Copyright © 2016年 mzzdxt. All rights reserved.
//

#import "JQRecommendCategoryCell.h"
#import "JQRecommendCategory.h"

@interface JQRecommendCategoryCell()

/** 选中时显示的指示器控件 */
@property (weak, nonatomic) IBOutlet UIView *selectedIndicator;

@end

@implementation JQRecommendCategoryCell

- (void)awakeFromNib {
    
    self.backgroundColor = JQRGBColor(244, 244, 244);
//    self.selectedIndicator.backgroundColor = JQRGBColor(219, 21, 26);
    
    // 当cell的selection为none时，即使cell被选中了，内部的子控件也不会进入高亮状态
//    self.textLabel.highlightedTextColor = JQRGBColor(219, 21, 26);
}

- (void)setCategory:(JQRecommendCategory *)category
{
    _category = category;
    
    self.textLabel.text = category.name;
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    
    // 重新调整内部的textLabel的frame
    self.textLabel.y = 2;
    self.textLabel.height = self.contentView.height - 2 * self.textLabel.y;

}

/**
 * 可以在这个方法中监听cell的选中和取消选中
 */
- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    self.selectedIndicator.hidden = !selected;
    self.textLabel.textColor = selected ? self.selectedIndicator.backgroundColor : JQRGBColor(78, 78, 78);
}

@end
