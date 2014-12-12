//
//  SecondViewController.h
//  iOSBlockDemo
//
//  Created by Huang Xianshuai on 14/12/11.
//  Copyright (c) 2014年 Huang Xianshuai. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"

@interface SecondViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *sLabel;
@property (nonatomic, weak) id <xProtocol> delegate;
@property (nonatomic, strong) NSString *labelText;

@end