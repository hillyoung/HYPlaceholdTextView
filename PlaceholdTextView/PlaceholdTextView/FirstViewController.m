//
//  FirstViewController.m
//  PlaceholdTextView
//
//  Created by yanghaha on 15/10/9.
//  Copyright (c) 2015年 yanghaha. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@property (strong, nonatomic) UISearchBar *searchBar;

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.


    UIBarButtonItem *leftItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemBookmarks target:nil action:nil];
    self.navigationItem.leftBarButtonItem = leftItem;
//    [self.view addSubview:self.searchBar];
    self.navigationItem.titleView = self.searchBar;


    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 100, 30)];
    view.backgroundColor = [UIColor greenColor];
//    self.navigationItem.titleView = view;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (UISearchBar *)searchBar {
    if (!_searchBar) {
        _searchBar = [[UISearchBar alloc] initWithFrame:CGRectMake(0, 0, 100, 44)];
//        [_searchBar setSearchFieldBackgroundImage:[[UIImage alloc] init] forState:UIControlStateNormal];
        _searchBar.searchBarStyle = UISearchBarStyleMinimal;
        _searchBar.placeholder = @"请输入内容";
        _searchBar.layer.cornerRadius = 22;
        _searchBar.layer.masksToBounds = YES;
        _searchBar.layer.borderWidth = 2;
        _searchBar.layer.borderColor = [UIColor redColor].CGColor;
//        UIView *view = _searchBar.subviews.firstObject;
//        view.backgroundColor = [UIColor redColor];
    }

    return _searchBar;
}

- (IBAction)closeTapGesture:(UITapGestureRecognizer *)sender {
    [self.searchBar resignFirstResponder];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
