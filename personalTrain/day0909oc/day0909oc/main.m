//
//  main.m
//  day0909oc
//
//  Created by liushuai on 14-9-9.
//  Copyright (c) 2014年 Liushuai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dog.h"
#import "Person.h"
#import "Student.h"
int main(int argc, const char * argv[])
{
    Dog *dog1 = [Dog new];
    Dog *dog2 = [Dog new];
    dog1->_speed = 20;
    dog1->_color = ColerRed;
    dog1->_sex = SexMan;
    dog1->_weight = 100;
    dog2->_speed = 30;
    dog2->_color = ColerRed;
    dog2->_sex = SexMan;
    dog2->_weight = 1000;
//
//    [dog1 say];
//    [dog1 walk];
//    [dog1 say];
//    [dog1 eat];
//    [dog1 say];
//    
//    NSLog(@"%d",[dog1 compareSpeed:dog2]);
    
//    Person *p1 = [Person new];
//    p1->_dog = dog1;
//    [p1 eatDog];
//    [dog1 say];
//    [p1 walkDog];
//    [dog1 say];
    
    
    Student *stu1 = [Student new];
    Student *stu2 = [Student new];
    stu1->_age = 19;
    stu1->_height = 170;
    stu1->_beathday = 19920410;
    stu1->_cscore = 60;
    stu1->_ocscore = 60;
    stu1->_iosscore = 60;
    stu1->_weight = 50;
    
    stu2->_age = 19;
    stu2->_height = 170;
    stu2->_beathday = 19920410;
    stu2->_cscore = 60;
    stu2->_ocscore = 60;
    stu2->_iosscore = 60;
    stu2->_weight = 50;
    
    
//    [stu1 eat];
//    [stu1 walk];
//    [stu1 study];
    
    
    
    return 0;
}

