//
//  MainViewController.m
//  DesignPatten
//
//  Created by ShawnDu on 15/10/27.
//  Copyright © 2015年 ShawnDu. All rights reserved.
//

#import "MainViewController.h"
#import "RemindView.h"
#import "FaceDetectProtocol.h"
#import "FaceModel.h"
#import "ConcreteProxy.h"

@interface MainViewController()<RemindViewDelegate, MessageProtocol>

@end
@implementation MainViewController{
    RemindView *_remindView;
    NSInteger _inputImageWidth;
    NSInteger _faceNumber;
}

- (void)viewDidLoad {
    FaceModel *model = [[FaceModel alloc] init];
    [self processFaceResult:model];
    ConcreteProxy *proxy = [ConcreteProxy alloc];
    proxy.delegate = self;
    [proxy doTransport];
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

- (void)doTransport {
    NSLog(@"transport>>>>");
}

#pragma mark - private method
- (void)processFaceResult:(id<FaceDetectProtocol>)data {
    _inputImageWidth = [data getInputImageWidth];
    _faceNumber = [data getFaceNumber];
}

@end
