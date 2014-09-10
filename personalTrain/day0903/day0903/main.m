//
//  main.m
//  day0903
//
//  Created by liushuai on 14-9-3.
//  Copyright (c) 2014年 Liushuai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "User.h"
#import "Circle.h"
#import "Rectangle.h"
int main(int argc, const char * argv[])
{
//    User *u = [User new];
//    [u showHigh:170 andWeight:50];
//    NSLog(@"Programming is fun!\n");
//    NSLog(@"sum is %d",10+20);
//    Circle *c = [Circle new];
//    c->r = 2 ;
//    NSLog(@"mianji%f",[c mianji:c->r]);
//    Rectangle *rect = [Rectangle new];
//    [rect setWidth:10];
//    [rect setHeight:20];
//    NSLog(@"area = %d",[rect area]);
    User *u = [User new];
    u.uid = 11;
    [u showUid];
    
    
    
    return 0;
}