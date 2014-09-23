//
//  AudiClass.h
//  day0912oc
//
//  Created by liushuai on 14-9-12.
//  Copyright (c) 2014年 Liushuai. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AudiClass : NSObject
{
    NSString *_type;
    NSString *_color;
    int _prize;
}
- (id)init;
- (void)run;
- (void)stop;
@end
