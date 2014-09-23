//
//  Teacher.m
//  day0923
//
//  Created by liushuai on 14-9-23.
//  Copyright (c) 2014年 Liushuai. All rights reserved.
//

#import "Teacher.h"

@implementation Teacher
- (id)initWithName:(NSString *)name gender:(NSString *)gender age:(int)age
{
    if (self = [super init]) {
        _name = name;
        _gender = gender;
        _age = age;
    }
    return self;
}
+(instancetype)teacherWithName:(NSString *)name gender:(NSString *)gender age:(int)age
{
    Teacher *teacher = [[Teacher alloc]initWithName:name gender:gender age:age];
    return teacher;
}
- (void)sayHi
{
    NSLog(@"%@,%@,%d",_name,_gender,_age);
}
@end
