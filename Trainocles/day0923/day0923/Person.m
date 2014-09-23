//
//  Person.m
//  day0923
//
//  Created by liushuai on 14-9-23.
//  Copyright (c) 2014年 Liushuai. All rights reserved.
//

#import "Person.h"

@implementation Person
@synthesize age = _age,name = _name,gender = _gender;
- (void)setName:(NSString *)name
{
    if (_name!=name) {
        [_name release];
        _name = [name retain];
    }
}
-(NSString *)name
{
    return [[ _name retain]autorelease];
}
- (void)setAge:(int)age
{
    _age = age;
}
-(int)age
{
    return age;
}
- (void)setGender:(NSString *)gender
{
    if(_gender!=gender)
    {
        [_gender release];
        _gender = [gender copy];
    }
}
- (NSString *)gender
{
    return [[_gender retain]autorelease];
}
@end