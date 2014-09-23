//
//  Person.h
//  day0912oc
//
//  Created by liushuai on 14-9-12.
//  Copyright (c) 2014年 Liushuai. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    NSString *_name;
    int _age;
    NSString *_gender;
}
- (void)walk;
@end
