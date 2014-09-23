//
//  Engine.h
//  day092303
//
//  Created by liushuai on 14-9-23.
//  Copyright (c) 2014年 Liushuai. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Engine : NSObject
{
    NSString *_type;
    int _power;
    
}
- (NSString *)description;
@end
