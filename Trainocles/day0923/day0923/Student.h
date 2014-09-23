//
//  Student.h
//  day0923
//
//  Created by liushuai on 14-9-23.
//  Copyright (c) 2014年 Liushuai. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Student : NSObject
@property(nonatomic,retain)NSString *name;
@property(nonatomic,retain)NSString *gender;
@property(nonatomic,assign)int age;
- (instancetype)initWithName:(NSString *)name
                      gender:(NSString *)gender
                         age:(int)age;

- (void)study;
@end
