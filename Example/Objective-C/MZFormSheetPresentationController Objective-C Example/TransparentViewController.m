//
//  TransparentViewController.m
//  MZFormSheetPresentationController Objective-C Example
//
//  Created by Michal Zaborowski on 22.06.2015.
//  Copyright (c) 2015 Michal Zaborowski. All rights reserved.
//

#import "TransparentViewController.h"
#import "MZFormSheetPresentationController.h"

@interface TransparentViewController ()

@end

@implementation TransparentViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)turnOnTransparencyButtonTapped:(id)sender {
    self.mz_formSheetPresentingPresentationController.backgroundColor = [UIColor clearColor];
    self.mz_formSheetPresentingPresentationController.transparentTouchEnabled = YES;
}
- (IBAction)turnOffTransparencyButtonTapped:(id)sender {
    self.mz_formSheetPresentingPresentationController.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.3];
    self.mz_formSheetPresentingPresentationController.transparentTouchEnabled = NO;
    
}
- (IBAction)dismissButtonTapped:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
