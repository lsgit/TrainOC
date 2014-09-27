//
//  Person.h
//  day092403
//
//  Created by liushuai on 14-9-24.
//  Copyright (c) 2014年 Liushuai. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Book;
@interface Person : NSObject
@property(nonatomic,retain)NSString *name;
@property(nonatomic,assign)int age;
@property(nonatomic,copy)Book *book;
@end
