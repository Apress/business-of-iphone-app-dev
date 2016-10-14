//
//  TellAFriendViewController.m
//  TellAFriend
//
//  Created by Dave Wooldridge on 8/12/09.
// 
//  Example Project from the Apress book:
//  The Business of iPhone App Development
//  http://www.iphonebusinessbook.com/
//

#import "TellAFriendViewController.h"

@implementation TellAFriendViewController


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)buttonPressed:(id)sender {
	// Button was tapped, so display Action Sheet.
    UIActionSheet *actionSheet = [[UIActionSheet alloc] initWithTitle:@"Like This App? Tell A Friend!" delegate:self cancelButtonTitle:@"Maybe Later" destructiveButtonTitle:@"Send Email" otherButtonTitles:@"Post on Twitter", @"Share on Facebook", nil];
    [actionSheet showInView:self.view];
    [actionSheet release];    
	
}

- (void)actionSheet:(UIActionSheet *)actionSheet didDismissWithButtonIndex:(NSInteger)buttonIndex {
	if (buttonIndex != [actionSheet cancelButtonIndex]) {
		if (buttonIndex == [actionSheet destructiveButtonIndex]) {
			// In-App Email, requires iPhone OS 3.0
			[self showMailComposer];
		}
		if (buttonIndex == 1) {
			// Add Twitter code here.
		}
		if (buttonIndex == 2) {
			// Add Facebook Connect code here.
		}
	}
}

// Displays an email composition interface inside the application. Populates all the Mail fields. 
- (void)showMailComposer {

	Class mailClass = (NSClassFromString(@"MFMailComposeViewController"));
	if (mailClass != nil) {
		// Test to ensure that device is configured for sending emails.
		if ([mailClass canSendMail]) {

			MFMailComposeViewController *picker = [[MFMailComposeViewController alloc] init];
			picker.mailComposeDelegate = self;
	
			[picker setSubject:@"Check out this cool iPhone app!"];
		
			// Fill out the email body text
			NSString *emailBody = @"Check out this cool iPhone app, now available in the App Store!\n\nBreadcrumbs - Parked Car Locator\n\nWatch a video and learn more at:\nhttp://www.breadcrumbsapp.com/";
			[picker setMessageBody:emailBody isHTML:NO];
	
			[self presentModalViewController:picker animated:YES];
			[picker release];
	
		}
		else {
			// Device is not configured for sending emails, so notify user.
			UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Unable to Email" message:@"This device is not yet configured for sending emails." delegate:self cancelButtonTitle:@"Okay, I'll Try Later" otherButtonTitles:nil];
			[alertView show];
			[alertView release];			
		}
	}
	
}

// Dismisses the Mail composer when the user taps Cancel or Send.
- (void)mailComposeController:(MFMailComposeViewController*)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError*)error 
{	
	NSString *resultTitle = nil;
	NSString *resultMsg = nil;
	
	switch (result)
	{
		case MFMailComposeResultCancelled:
			resultTitle = @"Email Cancelled";
			resultMsg = @"You elected to cancel the email";
			break;
		case MFMailComposeResultSaved:
			resultTitle = @"Email Saved";
			resultMsg = @"You saved the email as a draft";
			break;
		case MFMailComposeResultSent:
			resultTitle = @"Email Sent";
			resultMsg = @"Your email was successfully delivered";
			break;
		case MFMailComposeResultFailed:
			resultTitle = @"Email Failed";
			resultMsg = @"Sorry, the Mail Composer failed. Please try again.";
			break;
		default:
			resultTitle = @"Email Not Sent";
			resultMsg = @"Sorry, an error occurred. Your email could not be sent.";
			break;
	}
	
	// Notifies user of any Mail Composer errors received with an Alert View dialog.
	UIAlertView *mailAlertView = [[UIAlertView alloc] initWithTitle:resultTitle message:resultMsg delegate:self cancelButtonTitle:@"Okay" otherButtonTitles:nil];
	[mailAlertView show];
	[mailAlertView release];			
	[resultTitle release];			
	[resultMsg release];			
	
	[self dismissModalViewControllerAnimated:YES];
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
