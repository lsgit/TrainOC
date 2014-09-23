//
//  main.m
//  fenlei
//
//  Created by liushuai on 14-9-22.
//  Copyright (c) 2014年 Liushuai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+MyString.h"
#import "Person.h"
#import "Person+ls.h"
#import "NSDate+MyDate.h"
#import "Student.h"
int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSString *s = [NSString string];
        [s hello];
        Person *p = [[ Person alloc]init];
        [p hello];
        [p hellols];
        
        
        NSDate *date = [NSDate dateWithDateString:@"20140927140404"];
        NSLog(@"%@",date);
    
        
        Student *stu = [[Student alloc]init];
        
    }
    return 0;
}

