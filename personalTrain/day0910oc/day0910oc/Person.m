//
//  Person.m
//  day0910oc
//
//  Created by liushuai on 14-9-10.
//  Copyright (c) 2014年 Liushuai. All rights reserved.
//

#import "Person.h"

@implementation Person

-(id)initWithName:(NSString *)name andAge:(int)age andPid:(NSString *) pid{
    if (self = [super init]) {
        self.name = name;
        self.age = age;
        self.pid = pid;
    }
    return self;
}

- (void)dealloc
{
    NSLog(@"%@的Person对象销毁",self.name);
    [super dealloc];
}
@end
