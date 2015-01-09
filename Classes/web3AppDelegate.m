//
//  web3AppDelegate.m
//  web3
//
//  Created by JONATHAN GILES on 2/20/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import "web3AppDelegate.h"
#import "web3ViewController.h"

@implementation web3AppDelegate

@synthesize window;
@synthesize viewController;
@synthesize activityIndicator;


- (void)applicationDidFinishLaunching:(UIApplication *)application {    
    [application setStatusBarStyle:UIStatusBarStyleBlackOpaque animated:NO];
	[application setStatusBarHidden:NO animated:YES];

    // Override point for customization after app launch    
    [window addSubview:viewController.view];
    [window makeKeyAndVisible];
	
	
}

- (void)webViewDidFinishLoad:(UIWebView *)myWebView {
	[self.activityIndicator stopAnimating];
	[[UIApplication sharedApplication] setNetworkActivityIndicatorVisible:NO];
	
}
- (void)dealloc {
    [viewController release];
    [window release];
    [super dealloc];
}


@end
