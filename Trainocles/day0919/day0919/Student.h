//
//  Student.h
//  day0919
//
//  Created by liushuai on 14-9-19.
//  Copyright (c) 2014年 Liushuai. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Student : NSObject
{
    NSString *_name;
    NSString *_sno;
    int _age;
    float _score;
}
- (id)initWithName:(NSString *)name
               sno:(NSString *)sno
               age:(int)age
             score:(float)score;
- (NSString *)name;
- (NSString *)sno;
- (int)age;
- (float)score;
- (NSString *)description;
@end
