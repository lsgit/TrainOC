//
//  A.m
//  ocday092501
//
//  Created by liushuai on 14-9-25.
//  Copyright (c) 2014年 Liushuai. All rights reserved.
//

#import "A.h"
#import "B.h"
@implementation A
-(void)dealloc
{
    [_b release];
    NSLog(@"A delloc");
    [super dealloc];
}
- (void)study
{
    NSLog(@"study");
}
@end
