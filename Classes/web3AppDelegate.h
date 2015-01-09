//
//  web3AppDelegate.h
//  web3
//
//  Created by JONATHAN GILES on 2/20/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@class web3ViewController;

@interface web3AppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
 
	web3ViewController *viewController;
	
	IBOutlet UIActivityIndicatorView *activityIndicator;
	
}
@property (nonatomic, retain) IBOutlet UIActivityIndicatorView *activityIndicator;



@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet web3ViewController *viewController;

@end

