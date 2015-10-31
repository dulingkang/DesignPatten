//
//  SubjectModel.h
//  PrototypePatten
//
//  Created by ShawnDu on 15/10/31.
//  Copyright © 2015年 ShawnDu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PrototypeCopyProtocol.h"

@interface SubjectModel : NSObject

@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSString *logoUrl;
@property (strong, nonatomic) NSString *packageUrl;
@property (strong, nonatomic) NSString *isHot;
@property (strong, nonatomic) NSString *isFree;
@property (strong, nonatomic) NSString *price;
@property (strong, nonatomic) NSString *bannerUrl;
@property (strong, nonatomic) NSString *bigPictureUrl;
@property (strong, nonatomic) NSString *isNew;
@property (strong, nonatomic) NSString *md5;
@property (strong, nonatomic) NSString *size;
@property (strong, nonatomic) NSString *count;
@property (strong, nonatomic) NSString *desc;
@property (strong, nonatomic) NSString *width;
@property (strong, nonatomic) NSString *height;

- (id)clone;
@end
