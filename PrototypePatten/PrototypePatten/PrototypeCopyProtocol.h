//
//  PrototypeCopyProtocol.h
//  PrototypePatten
//
//  Created by ShawnDu on 15/10/31.
//  Copyright © 2015年 ShawnDu. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol PrototypeCopyProtocol <NSObject>

@required

- (id)clone;

@end
