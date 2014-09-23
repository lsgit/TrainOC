//
//  AddressBook.m
//  ochwday05
//
//  Created by liushuai on 14-9-18.
//  Copyright (c) 2014年 Liushuai. All rights reserved.
//

#import "AddressBook.h"
#import "Contact.h"
#import "pinyin.h"
@implementation AddressBook
- (id)init
{
    if(self = [super init]){
    NSMutableArray *keyArray = [[NSMutableArray alloc]init];
    NSMutableArray *valueArray = [[NSMutableArray alloc]init];
    for (int i=0; i<25; i++) {
        [keyArray addObject:[NSString stringWithFormat:@"%c",'A'+i]];
        [valueArray addObject:[[NSMutableArray alloc]initWithCapacity:1]];
    }
    _dict = [NSDictionary dictionaryWithObjects:valueArray forKeys:keyArray];
    }
    return self;
    
    
}
- (void)addContact:(Contact *)contact
{
    //获取姓名对应的分组数组
    NSMutableArray *m = [_dict objectForKey:[self getGroupByContact:[contact name]]];
    //添加联系人到对应分组
    [m addObject:contact];
    
}
- (NSArray *)findAllContactByAsecWithGroup:(NSString *)group;
{
    //获取分组名对应的分组 可变数组
    NSMutableArray *m = [_dict objectForKey:group];
    return [m sortedArrayUsingSelector:@selector(commpareByNameAsce:)];
}
- (Contact *)findContactByPhoneNumber:(NSString *)phoneNumber
{
    //快速枚举字典 可变数组类型
    for (NSMutableArray *key in _dict) {
        //对每个可变数组forin 联系人类型
        NSArray *a = [_dict objectForKey:key];
        for (Contact *c in a) {
            //如果当前联系人电话号码找到 返回跳出函数
            if ([[c name]isEqualToString:phoneNumber]) {
                return c;
            }
        }
    }
    return nil;
}

- (NSArray *)findAllGenderIsFemaleByAgeDesc
{
    //定义返回数组
    NSMutableArray *array = [[NSMutableArray alloc]init];
    //两层快速枚举 找到性别为女 添加到数组中
    for (NSMutableArray *key in _dict) {
        //对每个可变数组forin 联系人类型
        NSArray *a = [_dict objectForKey:key];
        for (Contact *c in a) {
            //如果当前联系人电话号码找到 返回跳出函数
            if ([[c gender]isEqualToString:@"女"]) {
                [array addObject:c];
            }
        }
    }
    //排序 并返回该数组
    return [array sortedArrayUsingSelector:@selector(compareByAgeDesc:)];
}
- (void)removeContactByName:(NSString *)name
{
    //为要删除的联系人开辟空间
    Contact *contact;
    //两层快速枚举 找到要删除的联系人 存为要删除的联系人
    for (NSMutableArray *key in _dict) {
        //对每个可变数组forin 联系人类型
        NSArray *a = [_dict objectForKey:key];
        for (Contact *c in a) {
            //如果当前联系人电话号码找到 返回跳出函数
            if ([[c name]isEqualToString:name]) {
                contact = c;
            }
        }
    }
    //删除联系人
    [[_dict objectForKey:[[contact name] uppercasePinYinFirstLetter]] removeObject:contact];
}
- (void)removecontactByGroup:(NSString *)group
{
    [[_dict objectForKey:group]removeAllObjects];
}
- (NSArray *)findAll
{
    //定义返回数组
    NSMutableArray *array = [[NSMutableArray alloc]init];
    //两层快速枚举
    for (NSMutableArray *key in _dict) {
        //对每个可变数组forin 联系人类型
        NSArray *a = [_dict objectForKey:key];
        for (Contact *c in a) {
            [array addObject:c];
        }
    }
    return array;
}
- (NSString *)getGroupByContact:(NSString *)name
{
    return [name uppercasePinYinFirstLetter];
}
@end
