//
//  ConcreteProxy.h
//  DelegatePatten
//
//  Created by dulingkang on 29/10/15.
//  Copyright © 2015 shawn. All rights reserved.
//

#import "AbstractProxy.h"
#import "MessageProtocol.h"

@interface ConcreteProxy : AbstractProxy<MessageProtocol>

@end
