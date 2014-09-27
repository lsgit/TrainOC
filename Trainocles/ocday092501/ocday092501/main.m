//
//  main.m
//  ocday092501
//
//  Created by liushuai on 14-9-25.
//  Copyright (c) 2014年 Liushuai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Studeny.h"
int main(int argc, const char * argv[])
{

    @autoreleasepool {
        Studeny *s1 = [[Studeny alloc]init];
        Studeny *s2 = [[Studeny alloc] init];
        NSMutableArray *array = [[NSMutableArray alloc]init];
        [array addObject:s1];
        [array addObject:s2];
        NSLog(@"%lu.%lu",s1.retainCount,s2.retainCount);
        [array release];
        NSLog(@"%lu.%lu",s1.retainCount,s2.retainCount);
        [s1 release];
        [s2 release];
    }
    return 0;
}

