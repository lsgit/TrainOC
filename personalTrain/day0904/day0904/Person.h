//
//  Person.h
//  day0904
//
//  Created by liushuai on 14-9-5.
//  Copyright (c) 2014年 Liushuai. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    NSString * _name;
    NSString * _sex;
    NSString * _uid;
    int _age;
    
    
}
- (void)setName:(NSString *)name;
- (void)setSex:(NSString *)sex;
- (void)setUid:(NSString *)uid;
- (void)setAge:(int)age;
- (NSString *)getName;
- (NSString *)getSex;
- (NSString *)getUid;
- (int)getAge;

@end
