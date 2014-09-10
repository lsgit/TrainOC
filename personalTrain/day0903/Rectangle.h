//
//  Rectangle.h
//  day0903
//
//  Created by liushuai on 14-9-3.
//  Copyright (c) 2014年 Liushuai. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Rectangle : NSObject
{
    int width;
    int height;
}
-(void)setWidth:(int)w;
-(void)setHeight:(int)h;
-(int)getWidth;
-(int)getHeight;
-(int)area;
@end
