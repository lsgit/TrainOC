//
//  MyProtocol.h
//  ocday092201
//
//  Created by liushuai on 14-9-22.
//  Copyright (c) 2014年 Liushuai. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol MyProtocol <NSObject>
@required //默认关键字
- (void) makeMoney;
@optional
- (void) giveBaby;
@end
