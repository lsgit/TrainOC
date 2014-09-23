//
//  Women.h
//  day0915
//
//  Created by liushuai on 14-9-15.
//  Copyright (c) 2014年 Liushuai. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Woman : NSObject
@property NSString *name;
@property int age;
@property NSString *beautiful;
@property long money;
- (id) initWithName:(NSString *)name
                age:(int)age
                bea:(NSString *)beautiful;
- (void)womanInfo;
- (void)receiveMoney:(long)money;
@end
