// Copyright © 2019 LEJU.
// All rights reserved.
/**********************************************************\
 * PROJECTNAME:  RTPopAnimation
 * FILENAME:     PopPresentationController.m
 * AUTHER:       ColaBean
 * CREATE TIME:  2019/3/20
 * MODIFY TIME:
 * DES:
 \**********************************************************/
//

#import "PopPresentationController.h"

@implementation PopPresentationController

- (void)presentationTransitionWillBegin {
    // Add a custom dimming view behind the presented view controller's view
    [[self containerView] addSubview:self.dimmingView];
    [self.dimmingView addSubview:self.presentedView];
    
    // Fade in the dimming view during the transition.
    [self.dimmingView setAlpha:0.0];
    [self animateFadeInTransitionInDimmingView:self.dimmingView alpha:1];
}

- (void)presentationTransitionDidEnd:(BOOL)completed {
    // Remove the dimming view if the presentation was aborted.
    if (!completed) {
        [self.dimmingView removeFromSuperview];
    }
}

- (void)dismissalTransitionWillBegin {
    [self animateFadeInTransitionInDimmingView:self.dimmingView alpha:0];
}

- (void)dismissalTransitionDidEnd:(BOOL)completed {}

//- (void)containerViewWillLayoutSubviews {
//    [super containerViewWillLayoutSubviews];
//    [self presentedView].frame = [self frameOfPresentedViewInContainerView];
//}

#pragma mark -
- (void)animateFadeInTransitionInDimmingView:(UIView *)aView alpha:(CGFloat)alpha {
    // Use the transition coordinator to set up the animations.
    id <UIViewControllerTransitionCoordinator> transitionCoordinator = [[self presentedViewController] transitionCoordinator];
    [transitionCoordinator animateAlongsideTransition:^(id<UIViewControllerTransitionCoordinatorContext>  _Nonnull context) {
        aView.alpha = alpha;
    } completion:nil];
}

- (UIView *)dimmingView {
    if (!_dimmingView) {
        _dimmingView = [UIView new];
        _dimmingView.frame = [UIScreen mainScreen].bounds;
        _dimmingView.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.35];
    }
    return _dimmingView;
}

@end
