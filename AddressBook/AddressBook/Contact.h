//
//  Contact.h
//  ochwday05
//
//  Created by liushuai on 14-9-18.
//  Copyright (c) 2014年 Liushuai. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Contact : NSObject
{
    NSString *_name;
    NSString *_gender;
    NSString *_phoneNumber;
    NSString *_address;
    NSString *_group;
    int _age;
}
- (id)initWithName:(NSString *)name
            gender:(NSString *)gender
       phoneNumber:(NSString *)phoneNumber
           address:(NSString *)address
             group:(NSString *)group;
- (void)setName:(NSString *)name;
- (NSString *)name;
- (void)setGender:(NSString *)gender;
- (NSString *)gender;
- (void)setPhoneNumber:(NSString *)phoneNumber;
- (NSString *)phoneNumber;
- (void)setAddress:(NSString *)address;
- (NSString *)address;
- (void)setGroup:(NSString *)group;
- (NSString *)group;
- (void)setAge:(int)age;
- (int)age;
- (NSComparisonResult)compareByAgeDesc:(Contact *)contact;
- (NSComparisonResult)commpareByNameAsce:(Contact *)contact;
- (NSString *)description;
@end
