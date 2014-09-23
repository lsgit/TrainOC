//
//  main.m
//  ocday0916
//
//  Created by liushuai on 14-9-16.
//  Copyright (c) 2014年 Liushuai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"
#import "CollageStudent.h"
int main(int argc, const char * argv[])
{

    @autoreleasepool {
//        NSString *s1 = [[NSString alloc]initWithString:@"haha"];
//        
//        NSString *s2 = @"hello";
//        NSString *s3 = [[NSString alloc]initWithString:s2];
        Student *stu1 = [[Student alloc] initWithName:@"liushuai" gender:@"nan" age:19];
        [stu1 sayHi];
        [stu1 study];
        
        Person *p = [[Student alloc]initWithName:@"ll" gender:@"nan" age:18 ];
        [p performSelector:@selector(study)];
        
        CollageStudent *collageStudent = [[CollageStudent alloc] initWithName:@"liushuai" gender:@"nan" age:21 school:@"shxy" sno:@"201150119" major:@"oc" academy:@"lanou"];
        [collageStudent sayHi];
        [collageStudent study];
        
        CollageStudent *cc = [CollageStudent collageStudentWithName:@"ll" gender:@"weizhi" age:18 school:@"hahaaha" sno:@"2011" major:@"zhuanye" academy:@"xibie"];
        
        
    }
    return 0;
}

