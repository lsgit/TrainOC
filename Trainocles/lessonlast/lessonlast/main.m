//
//  main.m
//  lessonlast
//
//  Created by liushuai on 14-9-25.
//  Copyright (c) 2014年 Liushuai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "School.h"
#import "Person.h"
#import "Teacher.h"
#import "Student.h"
int main(int argc, const char * argv[])
{

    @autoreleasepool {
        Person *p1 = [[Student alloc]init];
        [p1 study];
        [p1 pstu];
        Teacher *t1 = [[Person alloc] init];
        //[t1 ts];
    }
    return 0;
}

