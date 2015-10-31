//
//  ViewController.m
//  PrototypePatten
//
//  Created by ShawnDu on 15/10/31.
//  Copyright © 2015年 ShawnDu. All rights reserved.
//

#import "ViewController.h"
#import "SubjectModel.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    SubjectModel *subject = [[SubjectModel alloc] init];
    subject.name = @"litterPerson";
    subject.logoUrl = @"www.baidu.com";
    subject.isHot = @"YES";
    subject.isFree = @"YES";
    subject.price = @"20";
    subject.bannerUrl = @"www.google.com";
    subject.bigPictureUrl = @"www.baidu.com/image1";
    subject.isNew = @"YES";
    subject.md5 = @"3025d5265dd3562";
    subject.size = @"300";
    subject.count = @"10";
    subject.desc = @"good boy";
    subject.width = @"200";
    subject.height = @"60";
    
    SubjectModel *subject2 = [subject clone];
    subject2.name = @"bigPerson";
    NSLog(@"subject2:%@", subject2);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
