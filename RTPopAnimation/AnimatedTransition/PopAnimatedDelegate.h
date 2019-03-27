// Copyright © 2019 LEJU.
// All rights reserved.
/**********************************************************\
 * PROJECTNAME:  RTPopAnimation
 * FILENAME:     PopAnimatedDelegate.h
 * AUTHER:       ColaBean
 * CREATE TIME:  2019/3/27
 * MODIFY TIME:
 * DES:
 \**********************************************************/
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSUInteger, AnimationTransitionStyle) {
    AnimationTransitionStyleAlert,
    AnimationTransitionStyleSheet,
};

@protocol PopAnimatedDelegate <NSObject>

- (AnimationTransitionStyle)animatedTransitionStyle;

@end

NS_ASSUME_NONNULL_END
