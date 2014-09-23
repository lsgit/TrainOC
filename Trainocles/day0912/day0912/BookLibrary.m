//
//  BookLibrary.m
//  day0912
//
//  Created by liushuai on 14-9-17.
//  Copyright (c) 2014年 Liushuai. All rights reserved.
//

#import "BookLibrary.h"
#import "Book.h"
@implementation BookLibrary
- (id)initWithBookArray:(NSMutableArray *)bookArray
{
    if (self = [super init]) {
        _bookArray = bookArray;
    }
    
    return self;
}
- (NSMutableArray *)addBook:(Book *)book
{
    [_bookArray addObject:book];
    return _bookArray;
}
- (NSMutableArray *)deleteBook:(Book *)book
{
    [_bookArray removeObject:book];
    return _bookArray;
}
- (NSMutableArray *)replaceBook:(Book *)book withNewBook:(Book *)newBook
{
    if ([_bookArray containsObject:book]) {
        for (int i=0; i<[_bookArray count]; i++) {
            if ([[_bookArray objectAtIndex:i] isEqualTo:book]) {
                [_bookArray replaceObjectAtIndex:i withObject:newBook];
            }
        }
    }else{
        NSLog(@"not find");
    }
    return _bookArray;
}
- (void)findBook:(Book *)book
{
    for (int i=0; i<[_bookArray count]; i++) {
        if ([[[_bookArray objectAtIndex:i]name] isEqualToString:[book name]]) {
            NSLog(@"找到了%@,%d",[book name],i);
        }
    }
    NSLog(@"找不到了");
}
- (NSMutableArray *)getAllBook
{
    return _bookArray;
}
@end
