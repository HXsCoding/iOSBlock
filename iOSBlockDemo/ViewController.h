//
//  ViewController.h
//  iOSBlockDemo
//
//  Created by Huang Xianshuai on 14/12/11.
//  Copyright (c) 2014年 Huang Xianshuai. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol xProtocol <NSObject>

- (void)changeLabelText:(NSString *)text;

@end

@interface ViewController : UIViewController <xProtocol>

@end

