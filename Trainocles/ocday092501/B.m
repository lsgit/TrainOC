//
//  B.m
//  ocday092501
//
//  Created by liushuai on 14-9-25.
//  Copyright (c) 2014年 Liushuai. All rights reserved.
//

#import "B.h"
#import "A.h"
@implementation B

- (void)dealloc
{
    [_a release];
    NSLog(@"B delloc");
    [super dealloc];
}
@end

