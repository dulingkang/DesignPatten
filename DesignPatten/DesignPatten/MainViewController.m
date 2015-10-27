//
//  MainViewController.m
//  DesignPatten
//
//  Created by ShawnDu on 15/10/27.
//  Copyright © 2015年 ShawnDu. All rights reserved.
//

#import "MainViewController.h"
#import "RemindView.h"

@interface MainViewController()<RemindViewDelegate>

@end
@implementation MainViewController{
    RemindView *_remindView;
}

#pragma mark - event response
- (IBAction)showRemindView:(id)sender {
    if (_remindView == nil) {
        _remindView = [[RemindView alloc] initWithFrame:CGRectMake(50, 200, 300, 300)];
    }
    _remindView.delegate = self;
    [self.view addSubview:_remindView];
}

#pragma mark - delegate method
- (void)closeRemindView{
    if (_remindView != nil) {
        [_remindView removeFromSuperview];
    }
}
@end
