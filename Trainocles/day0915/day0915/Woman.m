//
//  Women.m
//  day0915
//
//  Created by liushuai on 14-9-15.
//  Copyright (c) 2014年 Liushuai. All rights reserved.
//

#import "Woman.h"

@implementation Woman
- (id) initWithName:(NSString *)name
                age:(int)age
                bea:(NSString *)beautiful
{
    _name = name;
    _age = age;
    _beautiful = beautiful;
    return self;
}
- (void)womanInfo
{
    NSLog(@"i am %@ age %d,i have %ld money",_name,_age,_money);
}
- (void)receiveMoney:(long)money
{
    _money = _money+money;
}
@end
