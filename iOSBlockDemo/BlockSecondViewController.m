//
//  BlockSecondViewController.m
//  iOSBlockDemo
//
//  Created by Huang Xianshuai on 14/12/11.
//  Copyright (c) 2014年 Huang Xianshuai. All rights reserved.
//

#import "BlockSecondViewController.h"

@interface BlockSecondViewController ()

@end


@implementation BlockSecondViewController

- (IBAction)countPlus:(id)sender {
    
    NSInteger i = _sLabel.text.integerValue + 1;
    _sLabel.text = [NSString stringWithFormat:@"%li", (long)i];
    if (_mBlock) {
        _mBlock(_sLabel.text);
    }
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
