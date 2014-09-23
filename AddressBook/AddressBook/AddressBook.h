//
//  AddressBook.h
//  ochwday05
//
//  Created by liushuai on 14-9-18.
//  Copyright (c) 2014年 Liushuai. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Contact;
@interface AddressBook : NSObject
{
    NSDictionary *_dict;
}
- (id)init;
- (void)addContact:(Contact *)contact;
- (NSArray *)findAllContactByAsecWithGroup:(NSString *)group;
- (Contact *)findContactByPhoneNumber:(NSString *)phoneNumber;
- (NSArray *)findAllGenderIsFemaleByAgeDesc;
- (void)removeContactByName:(NSString *)name;
- (void)removecontactByGroup:(NSString *)group;
- (NSArray *)findAll;
- (NSString *)getGroupByContact:(NSString *)name;
@end
