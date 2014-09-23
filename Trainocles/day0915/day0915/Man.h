//
//  Man.h
//  day0915
//
//  Created by liushuai on 14-9-15.
//  Copyright (c) 2014年 Liushuai. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Woman;
@interface Man : NSObject
@property NSString *name;
@property int age;
@property long money;
@property Woman *wife;
- (id)init;
- (void)show;
- (void)makeMoney;
- (void)giveMoneyForWomen:(Woman *)women
                    money:(long)money;
- (void)marryWithWomen:(Woman *)woman;
@end
