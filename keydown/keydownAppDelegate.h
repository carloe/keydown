//
//  keydownAppDelegate.h
//  keydown
//
//  Created by Carlo Eugster on 12/30/11.
//  Copyright 2011 Carlo Eugster. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface keydownAppDelegate : NSObject <NSApplicationDelegate> {
    NSWindow *window;
    IBOutlet NSMenu *statusMenu;
    NSStatusItem * statusItem;
    IBOutlet NSMenuItem *swimMenuItem;
    IBOutlet NSMenuItem *runMenuItem;
}

@property (assign) IBOutlet NSWindow *window;

@end
