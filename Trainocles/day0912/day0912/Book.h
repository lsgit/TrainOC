//
//  Book.h
//  day0912
//
//  Created by liushuai on 14-9-17.
//  Copyright (c) 2014年 Liushuai. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Book : NSObject
{
    NSString *_name;
    int _prize;
}
- (id)initWithName:(NSString *)name
             prize:(int)prize;
- (NSString *)name;
- (int)prize;
- (void)setName:(NSString *)name;
- (void)setPrize:(int)prize;
@end
