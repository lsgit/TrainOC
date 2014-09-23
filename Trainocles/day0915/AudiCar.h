//
//  AudiCar.h
//  day0915
//
//  Created by liushuai on 14-9-15.
//  Copyright (c) 2014年 Liushuai. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AudiCar : NSObject
{
    NSString *_type;
    NSString *_color;
}
- (void)run;
- (void)stop;
@end
