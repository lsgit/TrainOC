//
//  AppDelegate.h
//  AddressBook
//
//  Created by liushuai on 14-9-18.
//  Copyright (c) 2014年 Liushuai. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>
{
    @public
    NSTextView *_textView1;
}
@property (assign) IBOutlet NSWindow *window;
@property (assign) IBOutlet NSTextList *textlist;

@end
