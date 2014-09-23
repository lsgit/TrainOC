//
//  Car.h
//  day092303
//
//  Created by liushuai on 14-9-23.
//  Copyright (c) 2014年 Liushuai. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Engine;
@interface Car : NSObject
{
    NSString *_color;
    Engine *_engine;
    int _prize;
}
- (NSString *)description;
@end
