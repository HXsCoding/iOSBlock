//
//  KVOViewController.m
//  iOSBlockDemo
//
//  Created by Huang Xianshuai on 14/12/12.
//  Copyright (c) 2014年 Huang Xianshuai. All rights reserved.
//

#import "KVOViewController.h"
#import "KVOSecondViewController.h"

@interface KVOViewController ()

@property (weak, nonatomic) IBOutlet UILabel *label;
@property (nonatomic, strong) KVOSecondViewController *ksViewController;

@end

@implementation KVOViewController

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context {
    
    if (context == @"sLabelText") {
        if ([keyPath isEqualToString:@"labelText"]) {
            _label.text = [_ksViewController valueForKey:@"labelText"];
        }
    }
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
    
    if ([segue.identifier isEqualToString:@"KVOSecondViewController"]) {
        
        [_ksViewController removeObserver:self forKeyPath:@"labelText"];
        
        _ksViewController = segue.destinationViewController;
        _ksViewController.labelText = _label.text;
        
        [_ksViewController addObserver:self forKeyPath:@"labelText" options:NSKeyValueObservingOptionNew | NSKeyValueObservingOptionOld context:@"sLabelText"];
    }
}


@end
