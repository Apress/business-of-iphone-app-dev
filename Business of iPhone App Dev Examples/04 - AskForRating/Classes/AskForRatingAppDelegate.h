//
//  AskForRatingAppDelegate.h
//  AskForRating
//
//  Created by Dave Wooldridge on 8/11/09.
// 
//  Example Project from the Apress book:
//  The Business of iPhone App Development
//  http://www.iphonebusinessbook.com/
//

#import <UIKit/UIKit.h>

@class AskForRatingViewController;

@interface AskForRatingAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    AskForRatingViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet AskForRatingViewController *viewController;

@end

