//
//  Rectangle.m
//  day0903
//
//  Created by liushuai on 14-9-3.
//  Copyright (c) 2014年 Liushuai. All rights reserved.
//

#import "Rectangle.h"

@implementation Rectangle
-(void)setWidth:(int)w{
    self->width = w;
}
-(void)setHeight:(int)h{
    self->height = h;
}
-(int)getWidth{
    return self->width;
}
-(int)getHeight{
    return self->height;
}
-(int)area{
    return self->height*self->width;
}
@end
