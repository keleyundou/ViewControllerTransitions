// Copyright © 2019 LEJU.
// All rights reserved.
/**********************************************************\
 * PROJECTNAME:  RTPopAnimation
 * FILENAME:     PopViewController.m
 * AUTHER:       ColaBean
 * CREATE TIME:  2019/3/20
 * MODIFY TIME:
 * DES:
 
 转场动画
 
 目的：
     开发一个基本动画组件库，eg: 弹窗显示时的弹性放大缩小
 
 涉及的类和协议：
 
    //Animation and interaction controllers are vended by delegates
    UIViewControllerTransitioningDelegate
 
    //Animation controllers conform to a protocol
    UIViewControllerAnimatedTransitioning
 
    //Interaction controllers conform to a protocol
    UIViewControllerInteractiveTransitioning
 
    //A system object passed to the controllers conforms to
    UIViewControllerContextTransitioning
 
 \**********************************************************/
//

#import "PopViewController.h"

@interface PopViewController ()

- (IBAction)closeAction:(id)sender;


@end

@implementation PopViewController

//- (instancetype)init {
//    if (self = [super init]) {
//        /*
//        typedef NS_ENUM(NSInteger, UIModalPresentationStyle) {
//            UIModalPresentationFullScreen = 0,
//            UIModalPresentationPageSheet NS_ENUM_AVAILABLE_IOS(3_2) __TVOS_PROHIBITED,
//            UIModalPresentationFormSheet NS_ENUM_AVAILABLE_IOS(3_2) __TVOS_PROHIBITED,
//            UIModalPresentationCurrentContext NS_ENUM_AVAILABLE_IOS(3_2),
//            UIModalPresentationCustom NS_ENUM_AVAILABLE_IOS(7_0),
//            UIModalPresentationOverFullScreen NS_ENUM_AVAILABLE_IOS(8_0),
//            UIModalPresentationOverCurrentContext NS_ENUM_AVAILABLE_IOS(8_0),
//            UIModalPresentationPopover NS_ENUM_AVAILABLE_IOS(8_0) __TVOS_PROHIBITED,
//            UIModalPresentationBlurOverFullScreen __TVOS_AVAILABLE(11_0) __IOS_PROHIBITED __WATCHOS_PROHIBITED,
//            UIModalPresentationNone NS_ENUM_AVAILABLE_IOS(7_0) = -1,
//        };
//         */
////        [self setModalPresentationStyle:UIModalPresentationCustom];
////        [self setTransitioningDelegate:self];
//    }
//    return self;
//}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)closeAction:(id)sender {
    [self dismissViewControllerAnimated:YES
                             completion:nil];
}

- (AnimationTransitionStyle)animatedTransitionStyle {
    return AnimationTransitionStyleAlert;
}

@end
