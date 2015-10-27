//
//  RemindView.m
//  DesignPatten
//
//  Created by ShawnDu on 15/10/27.
//  Copyright © 2015年 ShawnDu. All rights reserved.
//

#import "RemindView.h"

@implementation RemindView

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self configureViews];
    }
    return self;
}

#pragma mark - action method
- (void)closeButtonPressed:(UIButton *)button {
    if ([self.delegate respondsToSelector:@selector(closeRemindView)]) {
        [_delegate closeRemindView];
    }
}

#pragma mark - private method
- (void)configureViews {
    self.backgroundColor = [UIColor greenColor];
    self.alpha = 0.5;
    
    UIButton *closeButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 50, 50)];
    [closeButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    closeButton.titleLabel.text = @"close";
    [closeButton addTarget:self action:@selector(closeButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:closeButton];
}

@end
