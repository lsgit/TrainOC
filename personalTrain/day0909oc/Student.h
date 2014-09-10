//
//  Student.h
//  day0909oc
//
//  Created by liushuai on 14-9-9.
//  Copyright (c) 2014年 Liushuai. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Student : NSObject
/*1> 属性
* 姓名
* 生日
* 年龄
* 身高（单位是m）
* 体重（单位是kg）
* 性别
* C语言成绩
* OC成绩
* iOS成绩8*/
{
    @public
    NSString *_name;
    int _beathday;
    int _age;
    int _height;
    int _weight;
    int _cscore;
    int _ocscore;
    int _iosscore;
}



/*2> 行为
* 跑步：每跑步一次，身高增加1cm，体重减小0.5kg，输出跑完后的体重
* 吃饭：每吃一次，身高增加1cm，体重增加0.5kg，输出吃完后的体重
* 学习：每学习一次，3可成绩各加1分，输出学习完后的3科成绩
* 睡觉：输出所有的属性
* 比较C语言成绩：跟另外一个学生比较C语言成绩，返回成绩差（自己的成绩 - 其他人的成绩）
* 比较OC成绩：跟另外一个学生比较OC语言成绩，返回成绩差（自己的成绩 - 其他人的成绩）
* 比较iOS成绩：跟另外一个学生比较iOS语言成绩，返回成绩差（自己的成绩 - 其他人的成绩）
* 计算总分：算出3科成绩的总分
* 计算平均分：算出3科成绩的平均分*/

- (void) walk;
- (void) eat;
- (void) study;
- (void) sleep;
- (int) compareCOther:(Student *)other;
- (int) compareOCOther:(Student *)other;
- (int) compareCIOSther:(Student *)other;
- (int) sum;
- (int) avg;




















@end
