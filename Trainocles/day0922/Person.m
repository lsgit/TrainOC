//
//  Person.m
//  day0922
//
//  Created by liushuai on 14-9-22.
//  Copyright (c) 2014年 Liushuai. All rights reserved.
//

#import "Person.h"

@interface Person ()
-(void)say;
@end

@implementation Person
- (void)hello
{
    NSLog(@"hello");
}
-(void)say
{
    NSLog(@"say");
}
@end

@implementation Person (lss)

- (void)hellols
{
    NSLog(@"hello ls");
}

@end
