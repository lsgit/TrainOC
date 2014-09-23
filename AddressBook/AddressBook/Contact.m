//
//  Contact.m
//  ochwday05
//
//  Created by liushuai on 14-9-18.
//  Copyright (c) 2014年 Liushuai. All rights reserved.
//

#import "Contact.h"

@implementation Contact
- (id)initWithName:(NSString *)name gender:(NSString *)gender phoneNumber:(NSString *)phoneNumber address:(NSString *)address group:(NSString *)group
{
    if (self = [super init]) {
        _name = name;
        _gender = gender;
        _phoneNumber = phoneNumber;
        _address = address;
        _group = group;
    }
    return self;
}
- (void)setName:(NSString *)name
{
    _name = name;
}
- (NSString *)name
{
    return _name;
}
- (void)setGender:(NSString *)gender
{
    _gender = gender;
}
- (NSString *)gender
{
    return _gender;
}
- (void)setPhoneNumber:(NSString *)phoneNumber
{
    _phoneNumber = phoneNumber;
}
- (NSString *)phoneNumber
{
    return _phoneNumber;
}
- (void)setAddress:(NSString *)address
{
    _address = address;
}
- (NSString *)address
{
    return _address;
}
- (void)setGroup:(NSString *)group
{
    _group = group;
}
- (NSString *)group
{
    return _group;
}
- (void)setAge:(int)age
{
    _age = age;
}
- (int)age
{
    return _age;
}
- (NSComparisonResult)compareByAgeDesc:(Contact *)contact
{
    NSNumber *num1 = [NSNumber numberWithInt:[self age]];
    NSNumber *num2 = [NSNumber numberWithInt:[contact age]];
    return [num2 compare:num1];
}
- (NSComparisonResult)commpareByNameAsce:(Contact *)contact
{
    return [[self name]compare:[contact name]];
}
- (NSString *)description
{
    return [NSString stringWithFormat:@"%@,%@,%d,%@",_name,_phoneNumber,_age,_group];
}
@end
