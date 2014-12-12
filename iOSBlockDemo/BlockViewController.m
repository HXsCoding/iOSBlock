//
//  BlockViewController.m
//  iOSBlockDemo
//
//  Created by Huang Xianshuai on 14/12/11.
//  Copyright (c) 2014年 Huang Xianshuai. All rights reserved.
//

#import "BlockViewController.h"
#import "BlockSecondViewController.h"

@interface BlockViewController ()

@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation BlockViewController

+ (void)updateLabelText:(NSString *)text {
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    
    if ([segue.identifier isEqualToString:@"BlockSecondViewController"]) {
        BlockSecondViewController *bsViewController = [segue destinationViewController];
        bsViewController.labelText = _label.text;
        bsViewController.mBlock = ^(NSString *string) {
            _label.text = string;
        };
    }
}

@end
