//
//  keydownAppDelegate.h
//  keydown
//
//  Created by Carlo Eugster <carlo.eugster@gmail.com> on 12/30/11.
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
