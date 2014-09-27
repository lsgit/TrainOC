//
//  main.m
//  day092401
//
//  Created by liushuai on 14-9-24.
//  Copyright (c) 2014年 Liushuai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"
int main(int argc, const char * argv[])
{

    @autoreleasepool {
        Student *s1 = [[Student alloc]init];
        s1.name = @"liushuai1";
        Student *s2 = [[Student alloc]init];
        s2.name = @"liushuai2";
        NSMutableArray *array1 = [NSMutableArray arrayWithObjects:s1,s2, nil];
        [s2 release];
        NSLog(@"%@",array1);
        NSMutableArray *array2 = [array1 mutableCopy];
        NSLog(@"%@",array2);
        s1.name = @"liushuai3";
        NSLog(@"%@,%@",array1,array2);
        [s1 release];
        [array2 release];
        
        
//        [s retain];
//        [s release];
//        [s release];
//        NSLog(@"%lu",[s retainCount]);
    }
    return 0;
}

