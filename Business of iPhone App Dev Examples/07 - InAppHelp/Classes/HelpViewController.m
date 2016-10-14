//
//  HelpViewController.m
//  InAppHelp
//
//  Created by Dave Wooldridge on 10/11/09.
// 
//  Example Project from the Apress book:
//  The Business of iPhone App Development
//  http://www.iphonebusinessbook.com/
//

#import "HelpViewController.h"

@implementation HelpViewController

@synthesize delegate;
@synthesize webView;

- (void)viewDidLoad {
	// Load the htmlHelp.html file into the UIWebView.
	NSString *path = [[NSBundle mainBundle] pathForResource:@"htmlHelp" ofType:@"html"];
    NSURL *url = [NSURL fileURLWithPath:path];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [self.webView loadRequest:request];
	
    [super viewDidLoad];
}

- (IBAction)done {
	// The Done button was tapped, so close Help View.
	[self.delegate helpViewControllerDidFinish:self];	
}

- (IBAction)contactSupport {
	// The Contact Support button was tapped, so go to
	// the online customer support web site in Mobile Safari.
	NSURL *url = [NSURL URLWithString:@"http://www.apress.com/"];
	[[UIApplication sharedApplication] openURL:url];

	// An alternative option is to implement In-App Email instead,
	// enabling the user to send feedback directly to you via email.
}


/*
 // Override to allow orientations other than the default portrait orientation.
 - (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
 // Return YES for supported orientations
 return (interfaceOrientation == UIInterfaceOrientationPortrait);
 }
 */

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}

- (void)dealloc {
    [webView release];
    [super dealloc];
}


@end
