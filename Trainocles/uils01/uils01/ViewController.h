//
//  ViewController.h
//  uils01
//
//  Created by liushuai on 14-9-23.
//  Copyright (c) 2014年 Liushuai. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property(nonatomic,strong)IBOutlet UIButton *button;

@property(nonatomic,strong)IBOutlet UITextField *text1;
@property(nonatomic,strong)IBOutlet UITextField *text2;
@property(nonatomic,strong)IBOutlet UILabel *label1;
- (IBAction)dowork:(id)sender;


@end
