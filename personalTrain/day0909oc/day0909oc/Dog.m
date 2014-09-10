//
//  Dog.m
//  day0909oc
//
//  Created by liushuai on 14-9-9.
//  Copyright (c) 2014年 Liushuai. All rights reserved.
//

#import "Dog.h"

@implementation Dog
//2> 行为
//* 吃：每吃一次，体重增加0.5kg，输出吃完后的体重
- (void)eat{
    _weight = _weight+5;
}
//* 吠（叫）：输出所有的属性
- (void)walk{
    _weight-=5;
}
- (void)say{
    NSLog(@"weight is %d,speed is %d",_weight,_speed);
}
//* 跑：每吃一次，体重减少0.5kg，输出速度和跑完后的体重
//* 比较颜色：跟别的狗比较颜色，如果一样，返回YES，不一样，返回NO
- (BOOL)compareColor:(Dog *)otherDog{
    return _color == otherDog->_color;
}
//* 比较速度：跟别的狗比较速度，返回速度差（自己的速度 - 其他狗的速度）
- (int)compareSpeed:(Dog *)otherDog{
    return _speed - otherDog->_speed;
}
@end
