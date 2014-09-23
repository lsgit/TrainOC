//
//  lsplugin1.m
//  lsplugin1
//
//  Created by liushuai on 14-9-22.
//    Copyright (c) 2014年 Liushuai. All rights reserved.
//

#import "lsplugin1.h"

static lsplugin1 *sharedPlugin;

@interface lsplugin1()
@property (nonatomic, strong) NSBundle *bundle;
@end

@implementation lsplugin1
- (void)dealloc
{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}
+ (void)pluginDidLoad:(NSBundle *)plugin
{
    static id sharedPlugin = nil;
    static dispatch_once_t onceToken;
    NSString *currentApplicationName = [[NSBundle mainBundle] infoDictionary][@"CFBundleName"];
    if ([currentApplicationName isEqual:@"Xcode"]) {
        dispatch_once(&onceToken, ^{
            sharedPlugin = [[self alloc] initWithBundle:plugin];
        });
    }
}
- (void)doMenuAction
{
    NSAlert *alert = [NSAlert alertWithMessageText:@"Hello, World" defaultButton:nil alternateButton:nil otherButton:nil informativeTextWithFormat:@""];
    [alert runModal];
}
- (id)initWithBundle:(NSBundle *)plugin  
{
        if (self = [super init]) {
            // reference to plugin's bundle, for resource acccess
            self.bundle = plugin;
            
            // Create menu items, initialize UI, etc.
            
            // Sample Menu Item:
            NSMenuItem *menuItem = [[NSApp mainMenu] itemWithTitle:@"File"];
            if (menuItem) {
                [[menuItem submenu] addItem:[NSMenuItem separatorItem]];
                NSMenuItem *actionMenuItem = [[NSMenuItem alloc] initWithTitle:@"Do Action" action:@selector(doMenuAction) keyEquivalent:@""];
                [actionMenuItem setTarget:self];
                [[menuItem submenu] addItem:actionMenuItem];
            }
        }
        return self;
}
@end