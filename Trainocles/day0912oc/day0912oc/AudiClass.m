//
//  AudiClass.m
//  day0912oc
//
//  Created by liushuai on 14-9-12.
//  Copyright (c) 2014年 Liushuai. All rights reserved.
//

#import "AudiClass.h"

@implementation AudiClass

-(id)init{
    _type = @"qq";
    _color = @"lanse";
    return self;
}

- (void)run
{
    NSLog(@"%@的%@正在行驶...",_color,_type);
}
- (void)stop
{
    NSLog(@"%@的%@停车中...",_color,_type);
}
@end
