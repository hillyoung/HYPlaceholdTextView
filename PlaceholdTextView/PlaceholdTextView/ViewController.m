 //
//  ViewController.m
//  PlaceholdTextView
//
//  Created by yanghaha on 15/7/27.
//  Copyright (c) 2015年 yanghaha. All rights reserved.
//

#import "ViewController.h"
#import "HYPlaceholdTextView.h"

@interface ViewController ()<UITextViewDelegate>

@property (strong, nonatomic) IBOutlet HYPlaceholdTextView *textView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.textView.font = [UIFont systemFontOfSize:12.];
    self.textView.layer.borderWidth = 1.;
    self.textView.placeholdTitle = @"请输入反馈内容";
    self.textView.delegate = self;
    self.textView.labelOriginX = 2.;
    self.textView.labelOriginY = 10.;

    self.textView = [[HYPlaceholdTextView alloc] init];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

-(void)textViewDidChange:(UITextView *)textView {
    
}

@end
