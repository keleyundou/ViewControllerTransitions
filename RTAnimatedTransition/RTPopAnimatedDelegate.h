// Copyright © 2019 ColaBean.
// All rights reserved.
/**********************************************************\
 * PROJECTNAME:  RTPopAnimation
 * FILENAME:     RTPopAnimatedDelegate.h
 * AUTHER:       ColaBean
 * CREATE TIME:  2019/3/27
 * MODIFY TIME:
 * DES:
 \**********************************************************/
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSUInteger, RTAnimationTransitionStyle) {
    RTAnimationTransitionStyleAlert,
    RTAnimationTransitionStyleSheet,
};

@protocol RTPopAnimatedDelegate <NSObject>

- (RTAnimationTransitionStyle)animatedTransitionStyle;

@end

NS_ASSUME_NONNULL_END
