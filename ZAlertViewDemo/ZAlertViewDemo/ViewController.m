//
//  ViewController.m
//  ZAlertViewDemo
//
//  Created by 朱立焜 on 16/2/18.
//  Copyright © 2016年 朱立焜. All rights reserved.
//

#import "ViewController.h"
#import "ZAlertView.h"

@interface ViewController ()

@property (nonatomic, strong) ZAlertView *alertView;

@end

@implementation ViewController
- (IBAction)showAlert:(UIButton *)sender {
    self.alertView.nameLabel.text = @"Apple";
    self.alertView.companyLabel.text = @"Apple Inc.";
    self.alertView.leftCountLabel.text = @"20";
    self.alertView.leftDescriptionLabel.text = @"年收入";
    [self.alertView show];
}

- (ZAlertView *)alertView {
    if (_alertView == nil) {
        _alertView = [[ZAlertView alloc] init];
    }
    return _alertView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// 因为是加到window上的，所以要移除这个视图防止内存泄露
- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
    
    if (_alertView) {
        [self.alertView removeFromSuperview];
    }
    
}

@end
