//
//  main.m
//  delegatedemo1
//
//  Created by liushuai on 14-9-20.
//  Copyright (c) 2014年 Liushuai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Girl.h"
#import "Dailiren.h"
int main(int argc, const char * argv[])
{

    @autoreleasepool {
        Girl *gril = [[Girl alloc]init];
        Dailiren *daili = [[Dailiren alloc]initWithGril:gril];
        [daili givehua];
        [daili giveqikeli];
        [daili givexiong];
    }
    return 0;
}

