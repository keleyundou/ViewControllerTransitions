// Copyright © 2019 LEJU.
// All rights reserved.
/**********************************************************\
 * PROJECTNAME:  RTPopAnimation
 * FILENAME:     TransitioningDelegateCenter.m
 * AUTHER:       ColaBean
 * CREATE TIME:  2019/3/20
 * MODIFY TIME:
 * DES:
 \**********************************************************/
//

#import "TransitioningDelegateCenter.h"
#import "AnimatedTransitioningController.h"
#import "PopPresentationController.h"

@implementation TransitioningDelegateCenter

#pragma mark - UIViewControllerTransitioningDelegate
- (nullable id <UIViewControllerAnimatedTransitioning>)animationControllerForPresentedController:(id<PopAnimatedDelegate>)presented presentingController:(UIViewController *)presenting sourceController:(UIViewController *)source {
    NSString *desc = [NSString stringWithFormat:@"%@ should conform to PopAnimatedDelegate protocol.", NSStringFromClass(presented.class)];
    NSAssert([presented conformsToProtocol:@protocol(PopAnimatedDelegate)], desc);
    id <UIViewControllerAnimatedTransitioning>animatedTransitioning;
    animatedTransitioning = [AnimatedTransitioningController animatedTransitioningStyle:[presented animatedTransitionStyle]];
    return animatedTransitioning;
}

- (nullable id <UIViewControllerAnimatedTransitioning>)animationControllerForDismissedController:(id<PopAnimatedDelegate>)dismissed {
    id <UIViewControllerAnimatedTransitioning>animatedTransitioning;
    animatedTransitioning = [AnimatedTransitioningController animatedTransitioningStyle:[dismissed animatedTransitionStyle]];
    return animatedTransitioning;
}

//- (nullable id <UIViewControllerInteractiveTransitioning>)interactionControllerForPresentation:(id <UIViewControllerAnimatedTransitioning>)animator;
//
//- (nullable id <UIViewControllerInteractiveTransitioning>)interactionControllerForDismissal:(id <UIViewControllerAnimatedTransitioning>)animator;

- (nullable UIPresentationController *)presentationControllerForPresentedViewController:(UIViewController *)presented presentingViewController:(nullable UIViewController *)presenting sourceViewController:(UIViewController *)source NS_AVAILABLE_IOS(8_0); {
    PopPresentationController *pp = [[PopPresentationController alloc] initWithPresentedViewController:presented presentingViewController:presenting];
    return pp;
}

@end
