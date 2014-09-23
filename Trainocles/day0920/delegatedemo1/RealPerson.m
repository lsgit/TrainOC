//
//  RealPerson.m
//  day0920
//
//  Created by liushuai on 14-9-20.
//  Copyright (c) 2014年 Liushuai. All rights reserved.
//

#import "RealPerson.h"
#import "Girl.h"
@implementation RealPerson
- (instancetype)initWithGril:(Girl *)girl
{
    self = [super init];
    if (self) {
        self.girl = girl;
    }
    return self;
}
-(void)givexiong
{
    NSLog(@"我送熊了%@",_girl.name);
}
-(void)giveqikeli
{
    NSLog(@"我送巧克力了%@",_girl.name);
}
-(void)givehua
{
    NSLog(@"我送花了%@",_girl.name);
}
@end
