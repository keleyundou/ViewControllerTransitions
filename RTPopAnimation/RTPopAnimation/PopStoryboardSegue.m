// Copyright © 2019 LEJU.
// All rights reserved.
/**********************************************************\
 * PROJECTNAME:  RTPopAnimation
 * FILENAME:     PopStoryboardSegue.m
 * AUTHER:       ColaBean
 * CREATE TIME:  2019/3/20
 * MODIFY TIME:
 * DES:
 \**********************************************************/
//

#import "PopStoryboardSegue.h"

@implementation PopStoryboardSegue

- (void)performTransitionStyle:(UIModalTransitionStyle)style {
    UIViewController *destinationViewController = [self destinationViewController];
    destinationViewController.view.backgroundColor = [UIColor redColor];
    destinationViewController.modalTransitionStyle = style;
}

@end
