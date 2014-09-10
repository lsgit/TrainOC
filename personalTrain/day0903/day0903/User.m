//
//  User.m
//  day0903
//
//  Created by liushuai on 14-9-3.
//  Copyright (c) 2014年 Liushuai. All rights reserved.
//

#import "User.h"

@implementation User

@synthesize uid,high,weight;

-(void)showUid{
    printf("%d\n",uid);
}

-(void)showHigh:(int)mhigh andWeight:(int)mweight{
    printf("%d %d",mhigh,mweight);
}
-(int)moreMoney:(int)mmoney{
    return mmoney*mmoney;
}

@end
