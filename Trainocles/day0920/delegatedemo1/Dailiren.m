//
//  Dailiren.m
//  day0920
//
//  Created by liushuai on 14-9-20.
//  Copyright (c) 2014年 Liushuai. All rights reserved.
//

#import "Dailiren.h"
#import "RealPerson.h"
@implementation Dailiren
-(id)initWithGril:(Girl *)gril
{
    if (self = [super init]) {
        _realPerson = [[RealPerson alloc]initWithGril:gril];
    }
    return self;
}
- (void)givehua
{
    [_realPerson givehua];
}
- (void)giveqikeli
{
    [_realPerson giveqikeli];
}
- (void)givexiong
{
    [_realPerson givexiong];
}
@end
