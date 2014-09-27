//
//  ViewController.m
//  uils01
//
//  Created by liushuai on 14-9-23.
//  Copyright (c) 2014年 Liushuai. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)dowork:(id)sender
{
    int x = [[self.text1 text]intValue];
    int y = [[self.text2 text]intValue];
    int count = x+y;
    self.label1.text = [NSString stringWithFormat:@"%d",count];
}

@end
