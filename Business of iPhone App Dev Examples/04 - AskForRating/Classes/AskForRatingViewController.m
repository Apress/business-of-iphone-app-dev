//
//  AskForRatingViewController.m
//  AskForRating
//
//  Created by Dave Wooldridge on 8/11/09.
// 
//  Example Project from the Apress book:
//  The Business of iPhone App Development
//  http://www.iphonebusinessbook.com/
//

#import "AskForRatingViewController.h"

@implementation AskForRatingViewController


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
	[super viewDidLoad];
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
	if (buttonIndex == 1) {
		NSURL *url = [NSURL URLWithString:@"YOUR APP STORE URL"];
		[[UIApplication sharedApplication] openURL:url];
	}
}

- (IBAction)buttonPressed:(id)sender {
	UIAlertView *buttonAlert = [[UIAlertView alloc] initWithTitle:@"Help Spread the Word" message:@"If you like this app, please rate it in the App Store. Thanks!" delegate:self cancelButtonTitle:@"Maybe Later" otherButtonTitles:@"Rate It Now", nil];
	[buttonAlert show];
	[buttonAlert release];
}

/*
 // The designated initializer. Override to perform setup that is required before the view is loaded.
 - (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
 if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
 // Custom initialization
 }
 return self;
 }
 */

/*
 // Implement loadView to create a view hierarchy programmatically, without using a nib.
 - (void)loadView {
 }
 */

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
    [super dealloc];
}

@end
