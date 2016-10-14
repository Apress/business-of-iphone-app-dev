//
//  InAppPurchaseViewController.h
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
#import <StoreKit/StoreKit.h>
#import "InAppPurchaseObserver.h"

@interface InAppPurchaseViewController : UIViewController <SKProductsRequestDelegate> {
	InAppPurchaseObserver *inappObserver;	
	UIButton *inappButton;
}

@property (nonatomic, retain) InAppPurchaseObserver *inappObserver;
@property (nonatomic, retain) IBOutlet UIButton *inappButton;
-(IBAction)buyInApp:(id)sender;

@end

