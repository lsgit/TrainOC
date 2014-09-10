//
//  Author.m
//  day0910oc
//
//  Created by liushuai on 14-9-10.
//  Copyright (c) 2014年 Liushuai. All rights reserved.
//

#import "Author.h"

@implementation Author
-(id)initWithName:(NSString *)name andAge:(int)age andPid:(NSString *)pid andAid:(NSString *)aid{
    if (self = [super initWithName:name andAge:age andPid:pid]) {
        self.aid = aid;
    }
    return self;
}
- (void)dealloc
{
    NSLog(@"%@的Author对象被销毁",self.aid);
    [super dealloc];
}
@end
