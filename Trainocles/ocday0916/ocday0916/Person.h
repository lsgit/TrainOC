//
//  Person.h
//  ocday0916
//
//  Created by liushuai on 14-9-16.
//  Copyright (c) 2014年 Liushuai. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
@property NSString *name;
@property NSString *gender;
@property NSUInteger age;
- (void)sayHi;
- (id)initWithName:(NSString *)name
            gender:(NSString *)gender
               age:(NSUInteger)age;
@end
