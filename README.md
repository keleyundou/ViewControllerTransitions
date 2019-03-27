ViewControllerTransitions
=========================

## Usage

Custom ViewController should be conform to `PopAnimatedDelegate`.

current support transition style:

- Alert
- Sheet

```objc

#import "PopAnimatedDelegate.h"

@interface SheetViewController : UIViewController<PopAnimatedDelegate>

@end

...

- (AnimationTransitionStyle)animatedTransitionStyle {
    return AnimationTransitionStyleSheet;
}


```
