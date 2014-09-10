//
//  Student.m
//  day0910oc
//
//  Created by liushuai on 14-9-10.
//  Copyright (c) 2014年 Liushuai. All rights reserved.
//

#import "Student.h"

@implementation Student
-(id)initWithName:(NSString *)name andAge:(int)age andPid:(NSString *)pid andSno:(NSString *)sno{
    if (self=[super initWithName:name andAge:age andPid:pid]) {
        self.sno = sno;
    }
    return self;
}
- (void)dealloc
{
    [_book release];
    NSLog(@"%@的Student is destory",self.name);
    [super dealloc];
}
@end
