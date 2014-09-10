//
//  Author.h
//  day0910oc
//
//  Created by liushuai on 14-9-10.
//  Copyright (c) 2014年 Liushuai. All rights reserved.
//

#import "Person.h"

@interface Author : Person
@property(nonatomic,retain)NSString *aid;
-(id)initWithName:(NSString *)name andAge:(int)age andPid:(NSString *)pid andAid:(NSString *)aid;
@end
