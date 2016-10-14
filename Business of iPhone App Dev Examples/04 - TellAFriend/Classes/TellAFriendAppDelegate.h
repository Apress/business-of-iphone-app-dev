//
//  TellAFriendAppDelegate.h
//  TellAFriend
//
//  Created by Dave Wooldridge on 8/12/09.
// 
//  Example Project from the Apress book:
//  The Business of iPhone App Development
//  http://www.iphonebusinessbook.com/
//

#import <UIKit/UIKit.h>

@class TellAFriendViewController;

@interface TellAFriendAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    TellAFriendViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet TellAFriendViewController *viewController;

@end

