//
//  main.m
//  day0919
//
//  Created by liushuai on 14-9-19.
//  Copyright (c) 2014年 Liushuai. All rights reserved.
//
#import <Foundation/Foundation.h>
#import "Student.h"
int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        Student *stu1 = [[Student alloc]initWithName:@"wangti" sno:@"201150118" age:19 score:78.8];
        Student *stu2 = [[Student alloc]initWithName:@"wangban" sno:@"201150181" age:25 score:87.7];
        Student *stu3 = [[Student alloc]initWithName:@"wangaan" sno:@"201150120" age:20 score:15.4];
        Student *stu4 = [[Student alloc]initWithName:@"wangsi" sno:@"201150150" age:22 score:55.8];
        Student *stu5 = [[Student alloc]initWithName:@"wangwu" sno:@"201150203" age:35 score:34.7];
        Student *stu6 = [[Student alloc]initWithName:@"wangliu" sno:@"201150777" age:30 score:50.8];
        Student *stu7 = [[Student alloc]initWithName:@"wangqi" sno:@"201150140" age:33 score:66.8];
        
        NSArray *array = @[stu1,stu2,stu3,stu4,stu5,stu6,stu7];
        NSLog(@"name");
        
        NSArray *newarray = [array sortedArrayUsingComparator:^NSComparisonResult(id obj1, id obj2){
            Student *stu1 = (Student *)obj1;
            Student *stu2 = (Student *)obj2;
            return [[stu1 name] compare:[stu2 name]];
        }];
        NSLog(@"%@",newarray);
        NSArray *newarray2 = [array sortedArrayUsingComparator:^NSComparisonResult(id obj1, id obj2){
            return [[obj1 sno] compare:[obj2 sno]];
        }];
        NSLog(@"%@",newarray2);
        
        NSArray *newarray3 = [array sortedArrayUsingComparator:^NSComparisonResult(id obj1, id obj2) {
            Student *stu1 = (Student *)obj1;
            Student *stu2 = (Student *)obj2;
            NSNumber *num1 = [NSNumber numberWithInt:[stu1 age]];
            NSNumber *num2 = [NSNumber numberWithInt:[stu2 age]];
            return [num1 compare:num2];
        }];
        NSLog(@"%@",newarray3);
        
        NSArray *newarray4 = [array sortedArrayUsingComparator:^NSComparisonResult(id obj1, id obj2) {
            Student *stu1 = (Student *)obj1;
            Student *stu2 = (Student *)obj2;
            NSNumber *num1 = [NSNumber numberWithInt:[stu1 score]];
            NSNumber *num2 = [NSNumber numberWithInt:[stu2 score]];
            return [num1 compare:num2];
        }];
        NSLog(@"%@",newarray4);
        NSLog(@"%ld",(long)NSOrderedDescending);
        
        NSArray *newarray5 = [array sortedArrayUsingComparator:^NSComparisonResult(id obj1, id obj2) {
            Student *stu1 = (Student *)obj1;
            Student *stu2 = (Student *)obj2;
            if ([stu1 age]>[stu2 age]) {
                return NSOrderedDescending;
            }else{
                return NSOrderedSame;
            }
        }];
        NSLog(@"%@",newarray5);
        
        
    }
    return 0;
}

