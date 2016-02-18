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

@end
