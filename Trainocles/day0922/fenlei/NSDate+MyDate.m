//
//  NSDate+MyDate.m
//  day0922
//
//  Created by liushuai on 14-9-22.
//  Copyright (c) 2014年 Liushuai. All rights reserved.
//

#import "NSDate+MyDate.h"

@implementation NSDate (MyDate)
+(NSDate *)dateWithDateString:(NSString *)dateString
{
    NSDateFormatter *f = [[NSDateFormatter alloc]init];
    [f setDateFormat:@"yyyyMMddHHmmss"];
    NSDate *date = [f dateFromString:dateString];
    return date;
}
@end
