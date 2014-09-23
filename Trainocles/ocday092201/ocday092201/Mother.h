//
//  Mother.h
//  ocday092201
//
//  Created by liushuai on 14-9-22.
//  Copyright (c) 2014年 Liushuai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaoMuProtocol.h"
@interface Mother : NSObject
{
    id<BaoMuProtocol> baomu;
}
- (void)wantdaihaizi;
- (void)wantzuofan;
- (void)setBaoMu:(id<BaoMuProtocol>)object;
@end
