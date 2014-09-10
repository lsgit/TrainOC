//
//  Person.m
//  day0904
//
//  Created by liushuai on 14-9-5.
//  Copyright (c) 2014年 Liushuai. All rights reserved.
//

#import "Person.h"

@implementation Person
- (void)setName:(NSString *)name{
    _name = name;
}
- (void)setSex:(NSString *)sex{
    _sex = sex;
}
- (void)setUid:(NSString *)uid{
    _uid = uid;
}
- (void)setAge:(int)age{
    _age = age;
}
- (NSString *)getName{
    return _name;
}
- (NSString *)getSex{
    return _sex;
}
- (NSString *)getUid{
    return _uid;
}
- (int)getAge{
    return _age;
}
@end
