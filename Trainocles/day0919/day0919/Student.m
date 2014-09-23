//
//  Student.m
//  day0919
//
//  Created by liushuai on 14-9-19.
//  Copyright (c) 2014年 Liushuai. All rights reserved.
//

#import "Student.h"

@implementation Student
- (id)initWithName:(NSString *)name
               sno:(NSString *)sno
               age:(int)age
             score:(float)score
{
    if (self = [super init]) {
        _name = name;
        _sno = sno;
        _age = age;
        _score  = score;
    }
    return self;
}
- (NSString *)name
{
    return _name;
}
- (NSString *)sno
{
    return _sno;
}
- (int)age
{
    return _age;
}
- (float)score
{
    return _score;
}
- (NSString *)description
{
    return [NSString stringWithFormat:@"%@ %@ %d %.1f",_name,_sno,_age,_score];
}
@end
