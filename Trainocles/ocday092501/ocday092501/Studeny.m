//
//  Studeny.m
//  ocday092501
//
//  Created by liushuai on 14-9-25.
//  Copyright (c) 2014年 Liushuai. All rights reserved.
//

#import "Studeny.h"

@implementation Studeny
@synthesize name = _name,age = _age,gender = _gender;

-(void)dealloc
{
    NSLog(@"delloc%@",self);
    [_name release];
    [_gender release];
    
    [super dealloc];
}
- (void)setName:(NSString *)name
{
    if (_name!=name) {
        [_name release];
        _name = [name retain];
    }
}
- (NSString *)name
{
    return [[_name retain]autorelease];
}
- (void)setGender:(NSString *)gender
{
    if (_gender !=gender) {
        [_gender release];
        _gender = [gender copy];
    }
}
- (NSString *)gender
{
    return [[_gender retain]autorelease];
}

- (void)setAge:(int)age
{
    _age =age;
}
- (int)age
{
    return _age;
}
@end
