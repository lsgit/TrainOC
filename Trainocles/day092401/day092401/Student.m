//
//  Student.m
//  day092401
//
//  Created by liushuai on 14-9-24.
//  Copyright (c) 2014年 Liushuai. All rights reserved.
//

#import "Student.h"

@implementation Student
-(void)dealloc
{
    
    NSLog(@"%@be freed",self);
    [super dealloc];
}
- (id)copyWithZone:(NSZone *)zone
{
    self = [self retain];
    return self;
}
-(NSString *)description
{
    return [NSString stringWithString:_name];
}
@end
