//
//  main.m
//  day0904
//
//  Created by liushuai on 14-9-4.
//  Copyright (c) 2014年 Liushuai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
int main(int argc, const char * argv[])
{
    
    Person *p = [Person new];
    [p setName:@"liushuai"];
    [p setSex:@"nan"];
    [p setUid:@"230108199304100411"];
    [p setAge:19];
    NSLog(@"name:%@ sex: %@ uid:%@ age:%d",[p getName],[p getSex],[p getUid],[p getAge]);
    
    
    return 0;
}

