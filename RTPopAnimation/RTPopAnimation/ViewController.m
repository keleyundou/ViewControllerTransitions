// Copyright © 2019 ColaBean.
// All rights reserved.
/**********************************************************\
 * PROJECTNAME:  RTPopAnimation
 * FILENAME:     ViewController.m
 * AUTHER:       ColaBean
 * CREATE TIME:  2019/3/19
 * MODIFY TIME:
 * DES:
 
 \**********************************************************/
//

#import "ViewController.h"

#import "PopViewController.h"
#import "PopStoryboardSegue.h"
#import "RTTransitioningDelegateCenter.h"

@interface ViewController ()
@property (nonatomic, strong) RTTransitioningDelegateCenter *trasitioningDelegateCenter;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
//     [(PopStoryboardSegue *)segue performTransitionStyle:UIModalTransitionStyleFlipHorizontal];
     
     UIViewController *vc = [segue destinationViewController];
     vc.modalPresentationStyle = UIModalPresentationCustom;
     vc.transitioningDelegate = self.trasitioningDelegateCenter;
     
 }

- (RTTransitioningDelegateCenter *)trasitioningDelegateCenter {
    if (!_trasitioningDelegateCenter) {
        _trasitioningDelegateCenter = [RTTransitioningDelegateCenter new];
    }
    return _trasitioningDelegateCenter;
}

@end
