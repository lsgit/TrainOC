//
//  School.m
//  lessonlast
//
//  Created by liushuai on 14-9-25.
//  Copyright (c) 2014年 Liushuai. All rights reserved.
//

#import "School.h"

@implementation School
- (void)dealloc
{
    NSLog(@"school is dealloc");
    [super dealloc];
}
- (void)addStudent:(Person *)person
{
    [_studentArray addObject:person];
}
@end
