// Copyright © 2019 ColaBean.
// All rights reserved.
/**********************************************************\
 * PROJECTNAME:  RTPopAnimation
 * FILENAME:     RTTransitioningDelegateCenter.m
 * AUTHER:       ColaBean
 * CREATE TIME:  2019/3/20
 * MODIFY TIME:
 * DES:
 \**********************************************************/
//

#import "RTTransitioningDelegateCenter.h"
#import "RTAnimatedTransitioningController.h"
#import "RTPopPresentationController.h"

@implementation RTTransitioningDelegateCenter

#pragma mark - UIViewControllerTransitioningDelegate
- (nullable id <UIViewControllerAnimatedTransitioning>)animationControllerForPresentedController:(id<RTPopAnimatedDelegate>)presented presentingController:(UIViewController *)presenting sourceController:(UIViewController *)source {
    NSString *desc = [NSString stringWithFormat:@"%@ should conform to PopAnimatedDelegate protocol.", NSStringFromClass(presented.class)];
    NSAssert([presented conformsToProtocol:@protocol(RTPopAnimatedDelegate)], desc);
    id <UIViewControllerAnimatedTransitioning>animatedTransitioning;
    animatedTransitioning = [RTAnimatedTransitioningController animatedTransitioningStyle:[presented animatedTransitionStyle]];
    return animatedTransitioning;
}

- (nullable id <UIViewControllerAnimatedTransitioning>)animationControllerForDismissedController:(id<RTPopAnimatedDelegate>)dismissed {
    id <UIViewControllerAnimatedTransitioning>animatedTransitioning;
    animatedTransitioning = [RTAnimatedTransitioningController animatedTransitioningStyle:[dismissed animatedTransitionStyle]];
    return animatedTransitioning;
}

//- (nullable id <UIViewControllerInteractiveTransitioning>)interactionControllerForPresentation:(id <UIViewControllerAnimatedTransitioning>)animator;
//
//- (nullable id <UIViewControllerInteractiveTransitioning>)interactionControllerForDismissal:(id <UIViewControllerAnimatedTransitioning>)animator;

- (nullable UIPresentationController *)presentationControllerForPresentedViewController:(UIViewController *)presented presentingViewController:(nullable UIViewController *)presenting sourceViewController:(UIViewController *)source NS_AVAILABLE_IOS(8_0); {
    RTPopPresentationController *pp = [[RTPopPresentationController alloc] initWithPresentedViewController:presented presentingViewController:presenting];
    return pp;
}

@end
