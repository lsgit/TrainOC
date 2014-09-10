//
//  Student.m
//  day0909oc
//
//  Created by liushuai on 14-9-9.
//  Copyright (c) 2014年 Liushuai. All rights reserved.
//

#import "Student.h"
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
@implementation Student
- (void) walk{
    _height+=1;
    _weight-=5;
    NSLog(@"height is %d,weitht%d",_height,_weight);
}
- (void) eat{
    _height+=1;
    _weight+=5;
    NSLog(@"height is %d,weitht%d",_height,_weight);

}
- (void) study{
    _cscore+=1;
    _ocscore+=1;
    _iosscore+=1;
    NSLog(@"c is %d,oc is %d,ios is %d",_cscore,_ocscore,_iosscore);
    
}
- (void) sleep{
    NSLog(@"haha");
}
- (int) compareCOther:(Student *)other{
    return _cscore-other->_cscore;
}
- (int) compareOCOther:(Student *)other{
    return _ocscore - other->_ocscore;
}
- (int) compareCIOSther:(Student *)other{
    return _iosscore-other->_iosscore;
}
- (int) sum{
    return _iosscore+_ocscore+_cscore;
}
- (int) avg{
    return [self sum]/3;
}
@end
