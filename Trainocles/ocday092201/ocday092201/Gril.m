//
//  Gril.m
//  ocday092201
//
//  Created by liushuai on 14-9-22.
//  Copyright (c) 2014年 Liushuai. All rights reserved.
//

#import "Gril.h"

@implementation Gril
- (void)setHusband:(id<MarryProtocol>)object
{
    husband = object;
}
- (id)husband
{
    return husband;
}
- (void)wantCar
{
    [husband buyCar];
}
- (void)wantHouse
{
    [husband buyHouse];
}
- (void)wantGoodWork
{
    [husband buyCar];
}
- (void)wantBaby
{
    [husband giveBaby];
}
@end
