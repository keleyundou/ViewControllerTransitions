// Copyright © 2019 LEJU.
// All rights reserved.
/**********************************************************\
 * PROJECTNAME:  RTPopAnimation
 * FILENAME:     AnimatedTransitioningController.m
 * AUTHER:       ColaBean
 * CREATE TIME:  2019/3/20
 * MODIFY TIME:
 * DES:
 \**********************************************************/
//

#import "AnimatedTransitioningController.h"

@implementation AnimatedTransitioningController

- (instancetype)initWithTransitionStyle:(AnimationTransitionStyle)style {
    if (self = [super init]) {
        _transitionStyle = style;
    }
    return self;
}

+ (instancetype)animatedTransitioningStyle:(AnimationTransitionStyle)style {
    return [[self alloc] initWithTransitionStyle:style];
}

// This is used for percent driven interactive transitions, as well as for
// container controllers that have companion animations that might need to
// synchronize with the main animation.
- (NSTimeInterval)transitionDuration:(id<UIViewControllerContextTransitioning>)ctx {
    UIViewController *toVc = [ctx viewControllerForKey:UITransitionContextToViewControllerKey];
    if (toVc.isBeingPresented) {
        return .35f;
    }
    return .25f;
}

// This method can only  be a nop if the transition is interactive and not a percentDriven interactive transition.
- (void)animateTransition:(id <UIViewControllerContextTransitioning>)ctx {
    UIViewController *toVCtrl = [ctx viewControllerForKey:UITransitionContextToViewControllerKey];
    UIViewController *fromVCtrl = [ctx viewControllerForKey:UITransitionContextFromViewControllerKey];
    
    if (!toVCtrl && !fromVCtrl) {
        return;
    }
    NSTimeInterval duration = [self transitionDuration:ctx];
    
    switch (_transitionStyle) {
        case AnimationTransitionStyleAlert:
            if (toVCtrl.isBeingPresented) {
                [self presentView:toVCtrl.view duration:duration completion:^(BOOL finished) {
                    [ctx completeTransition:YES];
                }];
            } else if (fromVCtrl.isBeingDismissed) {
                [self dismissView:fromVCtrl.view duration:duration completion:^(BOOL finished) {
                    [ctx completeTransition:YES];
                }];
            }
            break;
        case AnimationTransitionStyleSheet:
            if (toVCtrl.isBeingPresented) {
                [self flipFromBottomWithView:toVCtrl.view duration:duration completion:^(BOOL finished) {
                    [ctx completeTransition:YES];
                }];
            } else if (fromVCtrl.isBeingDismissed) {
                [self flipFromTopWithView:fromVCtrl.view duration:duration completion:^(BOOL finished) {
                    [ctx completeTransition:YES];
                }];
            }
            break;
        default:
            break;
    }
}


/// A conforming object implements this method if the transition it creates can
/// be interrupted. For example, it could return an instance of a
/// UIViewPropertyAnimator. It is expected that this method will return the same
/// instance for the life of a transition.
//- (id <UIViewImplicitlyAnimating>) interruptibleAnimatorForTransition:(id <UIViewControllerContextTransitioning>)transitionContext NS_AVAILABLE_IOS(10_0) {
//
//}

// This is a convenience and if implemented will be invoked by the system when the transition context's completeTransition: method is invoked.
- (void)animationEnded:(BOOL) transitionCompleted {
    
}

#pragma mark - spring animation
- (void)presentView:(UIView *)aView duration:(NSTimeInterval)duration completion:(void(^)(BOOL finished))completion {
    aView.transform = CGAffineTransformMakeScale(0.8, 0.8);
    [UIView animateWithDuration:duration
                          delay:0
         usingSpringWithDamping:0.5
          initialSpringVelocity:1.25
                        options:UIViewAnimationOptionCurveLinear
                     animations:^{
                         aView.transform = CGAffineTransformIdentity;
                     } completion:completion];
}

- (void)dismissView:(UIView *)aView duration:(NSTimeInterval)duration completion:(void(^)(BOOL finished))completion {
    [UIView animateWithDuration:duration
                          delay:0
                        options:UIViewAnimationOptionCurveLinear|UIViewAnimationOptionTransitionCrossDissolve
                     animations:^{
                         aView.alpha = 0;
                     } completion:completion];
}

#pragma mark - flip animation
- (void)flipFromBottomWithView:(UIView *)aView duration:(NSTimeInterval)duration completion:(void(^)(BOOL finished))completion {
    CGRect finalFrame = aView.frame;
    aView.frame = (CGRect){0, CGRectGetMaxY(finalFrame), finalFrame.size};
    
    [UIView animateWithDuration:duration
                          delay:0
                        options:UIViewAnimationOptionCurveEaseOut
                     animations:^{
                         aView.frame = finalFrame;
                     } completion:completion];
}

- (void)flipFromTopWithView:(UIView *)aView duration:(NSTimeInterval)duration completion:(void(^)(BOOL finished))completion {
    CGRect finalFrame = aView.frame;
    
    [UIView animateWithDuration:duration
                          delay:0
                        options:UIViewAnimationOptionCurveEaseIn
                     animations:^{
                         aView.frame = (CGRect){0, CGRectGetMaxY(finalFrame), finalFrame.size};
                     } completion:completion];
}

@end
