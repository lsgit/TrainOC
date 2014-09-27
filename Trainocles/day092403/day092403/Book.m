//
//  Book.m
//  day092403
//
//  Created by liushuai on 14-9-24.
//  Copyright (c) 2014年 Liushuai. All rights reserved.
//

#import "Book.h"

@implementation Book
@synthesize name = _name,age = _age;
-(void)dealloc
{
    NSLog(@"%@delloc",_name);
    [super dealloc];
}
- (void)setName:(NSString *)name
{
    if (_name !=name) {
        [_name release];
        _name = [name retain];
    }
}
- (NSString *)name
{
    return [[_name retain]autorelease];
}
- (int)age
{
    return _age;
}
- (void)setAge:(int)age
{
    _age = age;
}
-(id)copyWithZone:(NSZone *)zone
{
    NSLog(@"fuck");
    return [self retain];
}

@end
