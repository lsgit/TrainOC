//
//  Person.h
//  day0909oc
//
//  Created by liushuai on 14-9-9.
//  Copyright (c) 2014年 Liushuai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dog.h"
@interface Person : NSObject
{
    @public
    NSString *_name;
    Dog *_dog;
}
- (void) eatDog;
- (void) walkDog;
@end
