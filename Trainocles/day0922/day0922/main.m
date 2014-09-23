//
//  main.m
//  day0922
//
//  Created by liushuai on 14-9-22.
//  Copyright (c) 2014年 Liushuai. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        NSDate *date1 = [NSDate date];
        NSLog(@"%@",date1);
        
        NSDate *date2 = [[NSDate alloc]initWithTimeIntervalSinceNow:24*60*60];
        NSLog(@"%@",date2);
        
        NSTimeInterval x = [date2 timeIntervalSinceDate:date1];
        NSLog(@"%lf",x);
        if (x<60) {
            NSLog(@"刚刚");
            
        }else if (x>=60&&x<=3600){
            NSLog(@"%d分钟前",(int)x/60);
        }else{
            NSLog(@"%d小时前",(int)x/3600);
        }
        
        NSDateFormatter *f = [[NSDateFormatter alloc] init];
        [f setDateFormat:@"yyyy/MM/dd,HH:mm:ss"];
        NSString *s = [f stringFromDate:date1];
        NSLog(@"%@",s);
        NSDate *date3 = [f dateFromString:s];
        NSLog(@"%@",date3);
        
        
        
        NSDateFormatter *f2 = [[NSDateFormatter alloc]init];
        [f2 setDateFormat:@"yyyy年MM月dd日 HH点mm分ss秒"];
        [f2 setTimeZone:[NSTimeZone timeZoneWithName:@"UTC+0"]];
        NSString *s2 = @"2014年05月04日 14点22分23秒";
        NSDate *date4 = [f2 dateFromString:s2];
        
        NSLog(@"%@",date4);
        [f2 setTimeZone:[NSTimeZone timeZoneWithName:@"UTC+8"]];
        NSString *ss = [f2 stringFromDate:date4];
        NSLog(@"ss:%@",ss);
    }
    
    return 0;
}

