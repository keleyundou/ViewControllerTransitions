// Copyright © 2019 ColaBean.
// All rights reserved.
/**********************************************************\
 * PROJECTNAME:  RTPopAnimation
 * FILENAME:     PopStoryboardSegue.h
 * AUTHER:       ColaBean
 * CREATE TIME:  2019/3/20
 * MODIFY TIME:
 * DES:
 \**********************************************************/
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface PopStoryboardSegue : UIStoryboardSegue

- (void)performTransitionStyle:(UIModalTransitionStyle)style;

@end

NS_ASSUME_NONNULL_END
