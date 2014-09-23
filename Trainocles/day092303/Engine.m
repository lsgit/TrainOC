//
//  Engine.m
//  day092303
//
//  Created by liushuai on 14-9-23.
//  Copyright (c) 2014年 Liushuai. All rights reserved.
//

#import "Engine.h"

@implementation Engine
- (NSString *)description
{
    return [NSString stringWithFormat:@"%@,%d",_type,_power];
}
@end
