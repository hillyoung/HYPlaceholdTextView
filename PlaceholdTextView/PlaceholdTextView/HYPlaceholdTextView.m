//
//  HYPlaceholdTextView.m
//  PlaceholdTextView
//
//  Created by yanghaha on 15/7/27.
//  Copyright (c) 2015年 yanghaha. All rights reserved.
//

#import "HYPlaceholdTextView.h"

#define HY_TEXTVIEW_TEXT @"text"

@interface HYPlaceholdTextView ()

@property (nonatomic ,strong) UILabel *placeholdLabel;

@end

@implementation HYPlaceholdTextView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];

    if (self) {
        [self awakeFromNib];
    }

    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];

    CGRect rect = self.frame;
    self.placeholdLabel.frame = CGRectMake(self.labelOriginX, self.labelOriginY, CGRectGetWidth(rect)-2*self.labelOriginX, self.font.pointSize);

}

- (void)dealloc {
    [[NSNotificationCenter defaultCenter] removeObserver:self
                                                    name:UITextViewTextDidChangeNotification
                                                  object:nil];
}

- (void)awakeFromNib {
    [super awakeFromNib];

    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(didChangeText)
                                                 name:UITextViewTextDidChangeNotification
                                               object:self];
}

#pragma mark - Set&&Get

- (UILabel *)placeholdLabel {
    if (!_placeholdLabel) {
        _placeholdLabel = [[UILabel alloc] init];
        _placeholdLabel.textColor = [UIColor grayColor];
        [self addSubview:_placeholdLabel];
    }

    return _placeholdLabel;
}

- (void)setPlaceholdTitle:(NSString *)placeholdTitle {
    self.placeholdLabel.text = placeholdTitle;
}

- (NSString *)placeholdTitle {
    return self.placeholdLabel.text;
}

- (void)setFont:(UIFont *)font {
    [super setFont:font];
    self.placeholdLabel.font = font;
}

#pragma mark - Action

- (void)didChangeText {
    self.placeholdLabel.hidden = self.text.length;
}

@end
