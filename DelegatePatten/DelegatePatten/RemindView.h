//
//  RemindView.h
//  DesignPatten
//
//  Created by ShawnDu on 15/10/27.
//  Copyright © 2015年 ShawnDu. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol RemindViewDelegate <NSObject>

@required
- (void)closeRemindView;

@end

@interface RemindView : UIView

@property (weak, nonatomic) id <RemindViewDelegate> delegate;

@end
