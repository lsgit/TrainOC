//
//  Gril.h
//  ocday092201
//
//  Created by liushuai on 14-9-22.
//  Copyright (c) 2014年 Liushuai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MarryProtocol.h"
@interface Gril : NSObject
{
    id<MarryProtocol> husband;
}
- (void)wantCar;
- (void)wantHouse;
- (void)wantGoodWork;
- (void)wantBaby;
//设置代理
- (void)setHusband:(id<MarryProtocol>)object;
//获取代理
- (id)husband;
@end
