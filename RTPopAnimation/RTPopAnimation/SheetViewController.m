// Copyright © 2019 LEJU.
// All rights reserved.
/**********************************************************\
 * PROJECTNAME:  RTPopAnimation
 * FILENAME:     SheetViewController.m
 * AUTHER:       ColaBean
 * CREATE TIME:  2019/3/26
 * MODIFY TIME:
 * DES:
 \**********************************************************/
//

#import "SheetViewController.h"

@interface SheetViewController ()

@end

@implementation SheetViewController

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
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (AnimationTransitionStyle)animatedTransitionStyle {
    return AnimationTransitionStyleSheet;
}

@end
