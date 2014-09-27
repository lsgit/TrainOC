//
//  School.h
//  lessonlast
//
//  Created by liushuai on 14-9-25.
//  Copyright (c) 2014年 Liushuai. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Person;
@interface School : NSObject
@property(nonatomic,retain)NSMutableArray *studentArray;
- (void)addStudent:(Person *)person;
@end
