//
//  Book.m
//  day0912
//
//  Created by liushuai on 14-9-17.
//  Copyright (c) 2014年 Liushuai. All rights reserved.
//

#import "Book.h"

@implementation Book
- (id)initWithName:(NSString *)name prize:(int)prize
{
    if (self= [super init]) {
        _name = name;
        _prize = prize;
    }
    return self;
}
- (NSString *)name
{
    return _name;
}
- (int)prize
{
    return _prize;
}
- (void)setName:(NSString *)name
{
    _name = name;
}
- (void)setPrize:(int)prize
{
    _prize = prize;
}
@end
