//
//  Mother.m
//  ocday092201
//
//  Created by liushuai on 14-9-22.
//  Copyright (c) 2014年 Liushuai. All rights reserved.
//

#import "Mother.h"

@implementation Mother
-(void)wantdaihaizi
{
    [baomu daihaizi];
}
-(void)wantzuofan
{
    [baomu zuofan];
}
- (void)setBaoMu:(id<BaoMuProtocol>)object
{
    baomu = object;
}
@end
