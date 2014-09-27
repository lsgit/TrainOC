//
//  Person.m
//  day092403
//
//  Created by liushuai on 14-9-24.
//  Copyright (c) 2014年 Liushuai. All rights reserved.
//

#import "Person.h"
#import "Book.h"
@implementation Person
@synthesize name = _name,book = _book,age = _age;
- (void)dealloc
{
    [_book release];
    NSLog(@"%@delloc",_name);
    [super dealloc];
}
//-(void)setName:(NSString *)name
//{
//    if (_name!=name) {
//        [_name release];
//        _name = [name retain];
//    }
//}
//-(NSString *)name
//{
//    return [[_name retain]autorelease];
//}
-(void)setAge:(int)age
{
    _age = age;
}
- (int)age
{
    return _age;
}
- (void)setBook:(Book *)book
{
    if (_book != book) {
        [_book release];
        
#pragma mark ????fengle
        _book = [book copy];
//        _book.name = [book.name copy];
//        _book.age = book.age;
    }
}
- (Book *)book
{
    return [[_book retain]autorelease];
}
@end
