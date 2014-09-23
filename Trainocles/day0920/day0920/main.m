//
//  main.m
//  day0920
//
//  Created by liushuai on 14-9-20.
//  Copyright (c) 2014年 Liushuai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
//        Person *p1 = [[Person alloc]init];
//        Person *p2 = [[Person alloc]init];
//        p1.name = @"liuhuai";
//        p1.age  = 18;
//        p2.name = @"liuhuai";
//        p2.age = 18;
//        NSLog(@"%d",[p1 isEqualTo:nil]);
//        NSLog(@"%d",[p1 isEqual:p2]);
//        
        NSDate *date = [[NSDate alloc]init];
        NSLog(@"%@",date);
        NSDateFormatter *f = [[NSDateFormatter alloc]init];
        [f setTimeZone:[NSTimeZone timeZoneWithAbbreviation:@"UTC+8"]];
        [f setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
//        NSTimeInterval time =[date timeIntervalSince1970];
//        NSLog(@"%lf",time);
        NSString *s = [f stringFromDate:date];
        NSLog(@"s:%@",s);
//        NSDate *date2 = [NSDate dateWithTimeIntervalSince1970:time];
//        NSLog(@"%@",date2);
        
        
    }
    return 0;
}

