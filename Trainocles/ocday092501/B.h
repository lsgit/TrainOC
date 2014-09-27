//
//  B.h
//  ocday092501
//
//  Created by liushuai on 14-9-25.
//  Copyright (c) 2014年 Liushuai. All rights reserved.
//

#import <Foundation/Foundation.h>
@class A;
@protocol myP <NSObject>

-(void)study;

@end
@interface B : NSObject
@property(nonatomic,retain)A *a;
@property(nonatomic,assign)id<myP> del;
@end
