//
//  Book.m
//  day0910oc
//
//  Created by liushuai on 14-9-10.
//  Copyright (c) 2014年 Liushuai. All rights reserved.
//

#import "Book.h"

@implementation Book
-(id)initWithName:(NSString *)bookname andPublishName:(NSString *)pname andAuthor:(Author *)author{
    if (self = [super init]) {
        self.name = bookname;
        self.publishName = pname;
        self.author = author;
    }
    return self;
}
- (void)dealloc
{
    [_author release];
    NSLog(@"%@Book id dealloc",self.name);
    [super dealloc];
}
@end
