//
//  MainViewController.h
//  InAppHelp
//
//  Created by Dave Wooldridge on 10/11/09.
// 
//  Example Project from the Apress book:
//  The Business of iPhone App Development
//  http://www.iphonebusinessbook.com/
//

#import "HelpViewController.h"

@interface MainViewController : UIViewController <HelpViewControllerDelegate> {
}

- (IBAction)showHelp;

@end
