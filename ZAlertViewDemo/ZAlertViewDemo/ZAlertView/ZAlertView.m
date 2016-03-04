//
//  ZAlertView.m
//  ZAlert
//
//  Created by 朱立焜 on 16/2/3.
//  Copyright © 2016年 朱立焜. All rights reserved.
//

#import "ZAlertView.h"

#define mScreenWidth   ([UIScreen mainScreen].bounds.size.width)
#define mScreenHeight  ([UIScreen mainScreen].bounds.size.height)

@interface ZAlertView ()

// 添加背景遮罩view
@property (nonatomic, strong) UIView *bgView;

@end

@implementation ZAlertView

- (instancetype)init
{
    self = [super init];
    if (self) {
        self = [[[NSBundle mainBundle] loadNibNamed:@"ZAlertView" owner:self options:nil] lastObject];
        
        // 初始化设置
        UIWindow *window = [UIApplication sharedApplication].keyWindow;
        self.frame = CGRectMake(65, -mScreenHeight, 250, 250);
        self.center = CGPointMake(mScreenWidth/2, -125);
        [window addSubview:self.bgView];
        [window addSubview:self];
        
    }
    return self;
}

- (UIView *)bgView {
    if (_bgView == nil) {
        _bgView = [[UIView alloc] initWithFrame:[UIScreen mainScreen].bounds];
        _bgView.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.3];
        _bgView.hidden = YES;
        
    }
    return _bgView;
}

- (void)show {
    
    [UIView animateWithDuration:0.8 delay:0 usingSpringWithDamping:0.7 initialSpringVelocity:0.3 options:UIViewAnimationOptionCurveEaseInOut animations:^{
        
        self.bgView.hidden = NO;
        self.bgView.userInteractionEnabled = NO;
        
        CGPoint center = self.center;
        center.y = mScreenHeight / 2;
        self.center = center;
        
    } completion:^(BOOL finished) {
        UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(hide)];
        [_bgView addGestureRecognizer:tap];
        self.bgView.userInteractionEnabled = YES;
    }];
    
}

// 隐藏
- (void)hide {
    [UIView animateWithDuration:1.2 delay:0 usingSpringWithDamping:0.7 initialSpringVelocity:0.3 options:0 animations:^{
        
        CGPoint center = self.center;
        center.y = mScreenHeight / 2 - mScreenHeight;
        self.center = center;
        self.bgView.hidden = YES;
        
    } completion:^(BOOL finished) {
    }];
    
}

@end
