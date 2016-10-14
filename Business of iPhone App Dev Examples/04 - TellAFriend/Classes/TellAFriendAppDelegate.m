//
//  TellAFriendAppDelegate.m
//  TellAFriend
//
//  Created by Dave Wooldridge on 8/12/09.
// 
//  Example Project from the Apress book:
//  The Business of iPhone App Development
//  http://www.iphonebusinessbook.com/
//

#import "TellAFriendAppDelegate.h"
#import "TellAFriendViewController.h"

@implementation TellAFriendAppDelegate

@synthesize window;
@synthesize viewController;


- (void)applicationDidFinishLaunching:(UIApplication *)application {    
    
    // Override point for customization after app launch    
    [window addSubview:viewController.view];
    [window makeKeyAndVisible];
}


- (void)dealloc {
    [viewController release];
    [window release];
    [super dealloc];
}


@end
