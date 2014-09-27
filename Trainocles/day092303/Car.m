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
    return [NSString stringWithFormat:@"%@%d",_color,_prize];
}
@end
