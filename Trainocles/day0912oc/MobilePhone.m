//
//  MobilePhone.m
//  day0912oc
//
//  Created by liushuai on 14-9-12.
//  Copyright (c) 2014年 Liushuai. All rights reserved.
//

#import "MobilePhone.h"

@implementation MobilePhone
- (void)call
{
    NSLog(@"%@ is calling",_type);
}
- (void)sendMessage
{
    NSLog(@"%@ is sendMessage",_type);
}
@end
