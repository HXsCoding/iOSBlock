//
//  ViewController.m
//  iOSBlockDemo
//
//  Created by Huang Xianshuai on 14/12/11.
//  Copyright (c) 2014年 Huang Xianshuai. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController () 

@property (weak, nonatomic) IBOutlet UILabel *label;

@end


@implementation ViewController

- (void)changeLabelText:(NSString *)text {
    _label.text = text;
}

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"SecondViewController"]) {
            SecondViewController *sViewController = segue.destinationViewController;
        sViewController.delegate = self;
        sViewController.labelText = _label.text;
    }
}

@end
