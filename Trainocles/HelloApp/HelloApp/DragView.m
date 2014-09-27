//
//  DragView.m
//  HelloApp
//
//  Created by liushuai on 14-9-27.
//  Copyright (c) 2014年 Liushuai. All rights reserved.
//

#import "DragView.h"

@implementation DragView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    CGPoint pt = [[touches anyObject]locationInView:self];
    _startLocation = pt;
    [[self superview]bringSubviewToFront:self];
}

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    CGPoint pt = [[touches anyObject]locationInView:self];
    CGRect frame = [self frame];
    
    frame.origin.x+= pt.x - _startLocation.x;
    frame.origin.y+= pt.y - _startLocation.y;
    [self setFrame:frame];
}
@end
