//
//  Dog.h
//  day0909oc
//
//  Created by liushuai on 14-9-9.
//  Copyright (c) 2014年 Liushuai. All rights reserved.
//

#import <Foundation/Foundation.h>

//1.设计一个”狗“类
//1> 属性
//* 颜色
//* 速度（单位是m/s）
//* 性别
//* 体重（单位是kg）
//2> 行为
//* 吃：每吃一次，体重增加0.5kg，输出吃完后的体重
//* 吠（叫）：输出所有的属性
//* 跑：每吃一次，体重减少0.5kg，输出速度和跑完后的体重
//* 比较颜色：跟别的狗比较颜色，如果一样，返回YES，不一样，返回NO
//* 比较速度：跟别的狗比较速度，返回速度差（自己的速度 - 其他狗的速度）
typedef enum{
    ColorBlack,
    ColorBlue,
    ColorWhite,
    ColerRed
}Color;
typedef enum {
    SexMan,
    SexWoman,
    SexUnknow
}Sex;
@interface Dog : NSObject
{
    @public
    Color _color;
    int _speed;
    Sex _sex;
    int _weight;
}
- (void)eat;
- (void)say;
- (void)walk;
- (BOOL)compareColor:(Dog *)otherDog;
- (int)compareSpeed:(Dog *)otherDog;

@end
