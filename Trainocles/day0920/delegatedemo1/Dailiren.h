//
//  Dailiren.h
//  day0920
//
//  Created by liushuai on 14-9-20.
//  Copyright (c) 2014年 Liushuai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GiveGift.h"
@class RealPerson;
@class Girl;
@interface Dailiren : NSObject<GiveGift>
{
    RealPerson *_realPerson;
}
- (id)initWithGril:(Girl *)gril;
@end
