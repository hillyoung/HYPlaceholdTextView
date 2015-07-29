//
//  HYPlaceholdTextView.h
//  PlaceholdTextView
//
//  Created by yanghaha on 15/7/27.
//  Copyright (c) 2015年 yanghaha. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HYPlaceholdTextView : UITextView

/**@brief 设置默认的提示文字
 *@param placeholdTitle 提示文字
 **/
- (void)setPlaceholdTitle:(NSString *)placeholdTitle;

/**获取默认的提示文字
 *@return 默认提示文字
 **/
- (NSString *)placeholdTitle;

//@property (nonatomic, copy) NSString *placeholdTitle;

/**
 *@return 获取默认文字label
 **/
- (UILabel *)placeholdLabel;

/**
 *设置originX
 **/
@property (nonatomic, assign) CGFloat labelOriginX;

/**
 *设置originY
 **/
@property (nonatomic, assign) CGFloat labelOriginY;

@end
