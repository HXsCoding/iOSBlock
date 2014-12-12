//
//  BlockSecondViewController.h
//  iOSBlockDemo
//
//  Created by Huang Xianshuai on 14/12/11.
//  Copyright (c) 2014年 Huang Xianshuai. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void (^MyBlock)(NSString *);

@interface BlockSecondViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *sLabel;
@property (nonatomic, strong) MyBlock mBlock;
@property (nonatomic, strong) NSString *labelText;

@end
