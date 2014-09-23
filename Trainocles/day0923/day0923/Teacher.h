//
//  Teacher.h
//  day0923
//
//  Created by liushuai on 14-9-23.
//  Copyright (c) 2014年 Liushuai. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Teacher : NSObject
{
    NSString *_name;
    NSString *_gender;
    int _age;
    
}
@property NSString *name;
@property NSString *gender;
@property int age;
- (id)initWithName:(NSString *)name
            gender:(NSString *)gender
               age:(int)age;
+(instancetype)teacherWithName:(NSString *)name
                        gender:(NSString *)gender
                           age:(int)age;
- (void)sayHi;
@end
