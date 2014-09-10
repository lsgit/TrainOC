//
//  Person.h
//  day0910oc
//
//  Created by liushuai on 14-9-10.
//  Copyright (c) 2014年 Liushuai. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
@property(nonatomic,retain)NSString *name;
@property(nonatomic,assign)int age;
@property(nonatomic,retain)NSString *pid;
-(id)initWithName:(NSString *)name andAge:(int)age andPid:(NSString *) pid;
@end
