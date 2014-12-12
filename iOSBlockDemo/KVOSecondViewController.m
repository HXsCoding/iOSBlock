//
//  KVOSecondViewController.m
//  iOSBlockDemo
//
//  Created by Huang Xianshuai on 14/12/12.
//  Copyright (c) 2014年 Huang Xianshuai. All rights reserved.
//

#import "KVOSecondViewController.h"

@interface KVOSecondViewController ()

@end

@implementation KVOSecondViewController


- (IBAction)countPuls:(id)sender {
    
    NSInteger i = _sLabel.text.integerValue + 1;
    [self setValue:[NSString stringWithFormat:@"%li", (long)i] forKey:@"labelText"];
    _sLabel.text = _labelText;
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
