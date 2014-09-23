//
//  Person.m
//  ocday0916
//
//  Created by liushuai on 14-9-16.
//  Copyright (c) 2014年 Liushuai. All rights reserved.
//

#import "Person.h"

@implementation Person
- (void)sayHi
{
    NSLog(@" HI ~ i am %@,xing bie %@, age is%lu",_name,_gender,_age);
}
- (id)initWithName:(NSString *)name
            gender:(NSString *)gender
               age:(NSUInteger)age
{
    
    if (self = [super init]) {
        _name = name;
        _gender = gender;
        _age = age;
    }
    
    return self;
}
@end
