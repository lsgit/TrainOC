//
//  main.m
//  day092303
//
//  Created by liushuai on 14-9-23.
//  Copyright (c) 2014年 Liushuai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Engine.h"
#import "Car.h"
int main(int argc, const char * argv[])
{

    @autoreleasepool {
        //kvc是间接访问实例变量的一种方法,通过字符串访问实例变量的值
        //kvc是苹果的脚本语言，语法简洁，功能强大
        Engine *engine = [[Engine alloc]init];
        [engine setValue:@"缸55" forKey:@"type"];
        NSDictionary *dict = @{@"color": @"red",@"prize":@1000,@"engine":engine};
        Car *car = [[Car alloc]init];
        [car setValuesForKeysWithDictionary:dict];
        NSLog(@"%@",car);
        [car setValue:@"dd" forKey:@"color"];
        [car setValue:nil forKey:@"prize"];
        NSLog(@"%@",car);
        [car setValue:@"缸80" forKeyPath:@"engine.type"];
        [car setValue:@5000 forKeyPath:@"engine.power"];
        NSLog(@"%@",car);
        
    }
    return 0;
}

