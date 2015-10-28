//
//  AbstractExcute.m
//  DelegatePatten
//
//  Created by dulingkang on 28/10/15.
//  Copyright © 2015 shawn. All rights reserved.
//

#import "AbstractExcute.h"

@implementation AbstractExcute

+ (instancetype)sharedInstance {
    static AbstractExcute * excute = nil;
    static dispatch_once_t *predicate;
    dispatch_once(predicate, ^{
        excute = [[AbstractExcute alloc] init];
    });
    return excute;
}

- (void)nullExcute:(NSArray *)array {
    
}

@end
