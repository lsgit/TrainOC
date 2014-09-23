//
//  MobilePhone.h
//  day0912oc
//
//  Created by liushuai on 14-9-12.
//  Copyright (c) 2014年 Liushuai. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MobilePhone : NSObject
{
    NSString *_type;
    NSString *_color;
    NSString *_size;
    int _prize;
    
}
- (void)call;
- (void)sendMessage;
@end
