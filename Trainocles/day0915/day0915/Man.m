//
//  Man.m
//  day0915
//
//  Created by liushuai on 14-9-15.
//  Copyright (c) 2014年 Liushuai. All rights reserved.
//

#import "Man.h"
#import "Woman.h"
@implementation Man
- (id)init
{
    _name = @"liuliu";
    _age = 19;
    _money = 1000000;
    return self;
    
}
- (void)makeMoney
{
    _money = _money + 1000;
}
- (void)show
{
    NSLog(@"i am %@ i have %ld",_name,_money);
}
- (void)giveMoneyForWomen:(Woman *)women
                    money:(long)money
{
    _wife = women;
    [_wife receiveMoney:money];
}
- (void)marryWithWomen:(Woman *)woman
{
    _wife = woman;
}
@end
