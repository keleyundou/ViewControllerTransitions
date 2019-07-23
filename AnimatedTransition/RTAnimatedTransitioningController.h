// Copyright © 2019 ColaBean.
// All rights reserved.
/**********************************************************\
 * PROJECTNAME:  RTPopAnimation
 * FILENAME:     RTAnimatedTransitioningController.h
 * AUTHER:       ColaBean
 * CREATE TIME:  2019/3/20
 * MODIFY TIME:
 * DES:
 \**********************************************************/
//

#import <Foundation/Foundation.h>
@import UIKit;

#import "RTPopAnimatedDelegate.h"

NS_ASSUME_NONNULL_BEGIN

@interface RTAnimatedTransitioningController : NSObject<UIViewControllerAnimatedTransitioning>

- (instancetype)initWithTransitionStyle:(RTAnimationTransitionStyle)style;
+ (instancetype)animatedTransitioningStyle:(RTAnimationTransitionStyle)style;
@property (nonatomic, assign, readonly) RTAnimationTransitionStyle transitionStyle;

@end

NS_ASSUME_NONNULL_END
