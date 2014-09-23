//
//  Student.m
//  day0923
//
//  Created by liushuai on 14-9-23.
//  Copyright (c) 2014年 Liushuai. All rights reserved.
//

#import "Student.h"

@implementation Student
- (instancetype)initWithName:(NSString *)name
                      gender:(NSString *)gender
                         age:(int)age
{
    if (self = [super init]) {
        _name = name;
        _gender = gender;
        _age = age;
    }
}

- (void)study
{
    NSLog(@"%@ is studying",_name);
}
@end
