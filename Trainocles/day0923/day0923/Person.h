//
//  Person.h
//  day0923
//
//  Created by liushuai on 14-9-23.
//  Copyright (c) 2014年 Liushuai. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
@property(nonatomic,retain)NSString *name;
@property(nonatomic,assign)int age;
@property(nonatomic,copy)NSString *gender;
@end

