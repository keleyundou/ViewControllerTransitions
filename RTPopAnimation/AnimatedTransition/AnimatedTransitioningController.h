// Copyright © 2019 LEJU.
// All rights reserved.
/**********************************************************\
 * PROJECTNAME:  RTPopAnimation
 * FILENAME:     AnimatedTransitioningController.h
 * AUTHER:       ColaBean
 * CREATE TIME:  2019/3/20
 * MODIFY TIME:
 * DES:
 \**********************************************************/
//

#import <Foundation/Foundation.h>
@import UIKit;

#import "PopAnimatedDelegate.h"

NS_ASSUME_NONNULL_BEGIN

@interface AnimatedTransitioningController : NSObject<UIViewControllerAnimatedTransitioning>

- (instancetype)initWithTransitionStyle:(AnimationTransitionStyle)style;
+ (instancetype)animatedTransitioningStyle:(AnimationTransitionStyle)style;
@property (nonatomic, assign, readonly) AnimationTransitionStyle transitionStyle;

@end

NS_ASSUME_NONNULL_END
