//
//  keydownAppDelegate.m
//  keydown
//
//  Created by Carlo Eugster <carlo.eugster@gmail.com> on 12/30/11.
//

#import "keydownAppDelegate.h"

@implementation keydownAppDelegate

@synthesize window;

-(void)awakeFromNib {
    statusItem = [[[NSStatusBar systemStatusBar] statusItemWithLength:NSVariableStatusItemLength] retain]; 
    [statusItem setMenu:statusMenu];
    [statusItem setImage:[NSImage imageNamed:@"menu_icon.png"]];
    [statusItem setHighlightMode:YES];
    
    [NSTimer scheduledTimerWithTimeInterval:0.5 target:self selector:@selector(applicationLoop) userInfo:nil repeats:YES];
}

-(IBAction)swimClicked:(id *)sender {
    if(swimMenuItem.state == 0) {
        [swimMenuItem setState:1];
        [runMenuItem setState:0];
    }
    else {
        [swimMenuItem setState:0];
        [runMenuItem setState:0];
    }
}

-(IBAction)runClicked:(id)sender {
    if(runMenuItem.state == 0) {
        [runMenuItem setState:1];
        [swimMenuItem setState:0];
    }
    else {
        [swimMenuItem setState:0];
        [runMenuItem setState:0];
    }    
}

-(IBAction)quitClicked:(id)sender {
    [[NSApplication sharedApplication] terminate:self];
}

-(void)applicationLoop {
    NSDictionary *apps = [[NSWorkspace sharedWorkspace] activeApplication];
    if([[apps objectForKey:@"NSApplicationBundleIdentifier"] isEqual:@"com.Mojang Specifications.Minecraft.Minecraft"]) {
        if(swimMenuItem.state == 1) {
            CGEventRef e = CGEventCreateKeyboardEvent (NULL, (CGKeyCode)13, true);
            CGEventRef s = CGEventCreateKeyboardEvent (NULL, (CGKeyCode)49, true);
            CGEventPost(kCGSessionEventTap, e);
            CGEventPost(kCGSessionEventTap, s);
            CFRelease(e);       
            CFRelease(s);         
        }
        else if(runMenuItem.state == 1) {
            CGEventRef e = CGEventCreateKeyboardEvent (NULL, (CGKeyCode)13, true);
            CGEventPost(kCGSessionEventTap, e);
            CFRelease(e);         
        }
    }
}

@end
