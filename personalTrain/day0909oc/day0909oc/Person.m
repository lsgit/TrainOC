//
//  Person.m
//  day0909oc
//
//  Created by liushuai on 14-9-9.
//  Copyright (c) 2014年 Liushuai. All rights reserved.
//

#import "Person.h"

@implementation Person
- (void)eatDog{
    _dog->_weight = _dog->_weight + 10;
}
- (void)walkDog{
    _dog->_weight = _dog->_weight - 10;
}
@end
