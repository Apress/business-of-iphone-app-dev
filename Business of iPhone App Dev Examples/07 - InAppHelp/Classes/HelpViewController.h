//
//  HelpViewController.h
//  InAppHelp
//
//  Created by Dave Wooldridge on 10/11/09.
// 
//  Example Project from the Apress book:
//  The Business of iPhone App Development
//  http://www.iphonebusinessbook.com/
//

@protocol HelpViewControllerDelegate;


@interface HelpViewController : UIViewController {
	id <HelpViewControllerDelegate> delegate;
	UIWebView *webView;
}

@property (nonatomic, assign) id <HelpViewControllerDelegate> delegate;
@property (nonatomic, retain) IBOutlet UIWebView *webView;
- (IBAction)done;
- (IBAction)contactSupport;

@end


@protocol HelpViewControllerDelegate
- (void)helpViewControllerDidFinish:(HelpViewController *)controller;
@end

