//
//  InAppPurchaseAppDelegate.h
//  InAppPurchase
//
//  Created by Dave Wooldridge on 9/15/09.
// 
//  Example Project from the Apress book:
//  The Business of iPhone App Development
//  http://www.iphonebusinessbook.com/
//
// ----------------------------------------------------------
// Do not use this example project as is. In order for it to 
// run on your connected test device via Xcode, you must first 
// customize the code with your own In-App Purchase Product IDs.
// For adding code to verify transaction receipts or restoring
// paid items, please read Chapter 6 for complete details.
// ----------------------------------------------------------
// 

#import <UIKit/UIKit.h>

@class InAppPurchaseViewController;

@interface InAppPurchaseAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    InAppPurchaseViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet InAppPurchaseViewController *viewController;

@end

