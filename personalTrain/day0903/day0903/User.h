//
//  User.h
//  day0903
//
//  Created by liushuai on 14-9-3.
//  Copyright (c) 2014年 Liushuai. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface User : NSObject
{
    int uid;
    int high;
    int weight;
}
@property int uid,high,weight;
-(void)showUid;
-(void)showHigh:(int)mhigh andWeight:(int)mweight;
-(int)moreMoney:(int)mmoney;


@end
