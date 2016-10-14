//
//  InAppPurchaseObserver.m
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

#import "InAppPurchaseObserver.h"
#import "InAppPurchaseViewController.h"

@implementation InAppPurchaseObserver

// The transaction status of the SKPaymentQueue is sent here.
- (void)paymentQueue:(SKPaymentQueue *)queue updatedTransactions:(NSArray *)transactions {
	for(SKPaymentTransaction *transaction in transactions) {
		switch (transaction.transactionState) {
				
			case SKPaymentTransactionStatePurchasing:
				// Item is still in the process of being purchased
				break;
				
			case SKPaymentTransactionStatePurchased:
				// Item was successfully purchased!
				
				// --- UNLOCK FEATURE OR DOWNLOAD CONTENT HERE ---
				// The purchased item ID is accessible via 
				// transaction.payment.productIdentifier
				
				// After customer has successfully received purchased content,
				// remove the finished transaction from the payment queue.
				[[SKPaymentQueue defaultQueue] finishTransaction: transaction];
				break;
				
			case SKPaymentTransactionStateRestored:
				// Verified that user has already paid for this item.
				// Ideal for restoring item across all devices of this customer.
				
				// --- UNLOCK FEATURE OR DOWNLOAD CONTENT HERE ---
				// The purchased item ID is accessible via 
				// transaction.payment.productIdentifier
				
				// After customer has restored purchased content on this device,
				// remove the finished transaction from the payment queue.
				[[SKPaymentQueue defaultQueue] finishTransaction: transaction];
				break;
				
			case SKPaymentTransactionStateFailed:
				// Purchase was either cancelled by user or an error occurred.
				
				if (transaction.error.code != SKErrorPaymentCancelled) {
					// A transaction error occurred, so notify user.
				}
				// Finished transactions should be removed from the payment queue.
				[[SKPaymentQueue defaultQueue] finishTransaction: transaction];
				break;
		}
	}
}

@end
