//
//  TellAFriendViewController.h
//  TellAFriend
//
//  Created by Dave Wooldridge on 8/12/09.
// 
//  Example Project from the Apress book:
//  The Business of iPhone App Development
//  http://www.iphonebusinessbook.com/
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>
#import <MessageUI/MFMailComposeViewController.h>

@interface TellAFriendViewController : UIViewController <UIActionSheetDelegate, MFMailComposeViewControllerDelegate> {

}

- (IBAction)buttonPressed:(id)sender;
- (void)showMailComposer;

@end

