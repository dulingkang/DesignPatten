//
//  AbstractProxy.h
//  DelegatePatten
//
//  Created by dulingkang on 28/10/15.
//  Copyright © 2015 shawn. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AbstractProxy : NSProxy

@property (weak, nonatomic) id delegate;
@end
