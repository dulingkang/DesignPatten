//
//  AbstractProxy.m
//  DelegatePatten
//
//  Created by dulingkang on 28/10/15.
//  Copyright © 2015 shawn. All rights reserved.
//

#import "AbstractProxy.h"
#import "AbstractExcute.h"
#import <objc/runtime.h>

@implementation AbstractProxy

//验证方法签名
- (nullable NSMethodSignature *)methodSignatureForSelector:(SEL)sel {
    
    if ([self.delegate respondsToSelector:sel]) {
        return [self.delegate methodSignatureForSelector:sel];
    } else {
        AbstractExcute *excute = [AbstractExcute sharedInstance];
        return [excute methodSignatureForSelector:@selector(nullExcute:)];
    }
}

//派发消息
- (void)forwardInvocation:(NSInvocation *)invocation {
    
    SEL selector = [invocation selector];
    if ([self.delegate respondsToSelector:selector]) {
        [invocation setTarget:self.delegate];
        [invocation invoke];
    } else {
        
        NSString *selectorStr = NSStringFromSelector(invocation.selector);
        invocation.selector = NSSelectorFromString(@"nullExcute:");
        AbstractExcute *excute = [AbstractExcute sharedInstance];
        [invocation setTarget:excute];
        
        const char *className = class_getName([self class]);
        NSArray *array = nil;
        if (self.delegate) {
            array = @[[NSString stringWithUTF8String:className], selectorStr, @""];
        } else {
            
            array = @[[NSString stringWithUTF8String:className],selectorStr];
        }
        [invocation setArgument:&array atIndex:2];
        [invocation invoke];
    }
}

@end
