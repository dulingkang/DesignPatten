//
//  SubjectModel.m
//  PrototypePatten
//
//  Created by ShawnDu on 15/10/31.
//  Copyright © 2015年 ShawnDu. All rights reserved.
//

#import "SubjectModel.h"

@implementation SubjectModel

- (id)clone {
    SubjectModel *subject = [[[self class] alloc] init];
    
    subject.name = self.name;
    subject.logoUrl = self.logoUrl;
    subject.isHot = self.isHot;
    subject.isFree = self.isFree;
    subject.price = self.price;
    subject.bannerUrl = self.bannerUrl;
    subject.bigPictureUrl = self.bigPictureUrl;
    subject.isNew = self.isNew;
    subject.md5 = self.md5;
    subject.size = self.size;
    subject.count = self.count;
    subject.desc = self.desc;
    subject.width = self.width;
    subject.height = self.height;
    
    return subject;
}
@end
