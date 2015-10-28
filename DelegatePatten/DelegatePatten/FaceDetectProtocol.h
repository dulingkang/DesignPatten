//
//  FaceDetectProtocol.h
//  DelegatePatten
//
//  Created by dulingkang on 28/10/15.
//  Copyright © 2015 shawn. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol FaceDetectProtocol <NSObject>

@required
- (NSInteger)getInputImageWidth;
- (NSInteger)getFaceNumber;

@end
