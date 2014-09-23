//
//  Car.m
//  day092303
//
//  Created by liushuai on 14-9-23.
//  Copyright (c) 2014年 Liushuai. All rights reserved.
//

#import "Car.h"

@implementation Car
- (NSString *)description
{
    return [NSString stringWithFormat:@"%@%d%@",_color,_prize,_engine];
}
- (void)setValue:(id)value forUndefinedKey:(NSString *)key
{
    if ([key isEqualToString:@"engine"]) {
        
    }
}
- (void)setNilValueForKey:(NSString *)key
{
    if ([key isEqualToString:@"prize"]) {
        _prize = 1500;
    }
}
@end
