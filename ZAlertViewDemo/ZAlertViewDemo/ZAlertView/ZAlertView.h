//
//  ZAlertView.h
//  ZAlert
//
//  Created by 朱立焜 on 16/2/3.
//  Copyright © 2016年 朱立焜. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ZAlertView : UIView

@property (weak, nonatomic) IBOutlet UIImageView *headerIcon;

@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *companyLabel;

@property (weak, nonatomic) IBOutlet UILabel *leftCountLabel;
@property (weak, nonatomic) IBOutlet UILabel *leftDescriptionLabel;

@property (weak, nonatomic) IBOutlet UILabel *rightCountLabel;
@property (weak, nonatomic) IBOutlet UILabel *rightDescriptionLabel;

- (void)show;
- (void)hide;

@end
