//
//  SecondViewController.m
//  iOSBlockDemo
//
//  Created by Huang Xianshuai on 14/12/11.
//  Copyright (c) 2014年 Huang Xianshuai. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end


@implementation SecondViewController


- (IBAction)countPlus:(id)sender {
    // set the sLabel and label's count plus 1
    
    NSInteger i = _sLabel.text.integerValue + 1;
    _sLabel.text = [NSString stringWithFormat:@"%li", (long)i];
    [_delegate changeLabelText:_sLabel.text];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    _sLabel.text = _labelText;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
