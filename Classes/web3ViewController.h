//
//  web3ViewController.h
//  web3
//
//  Created by JONATHAN GILES on 2/20/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface web3ViewController : UIViewController<UIWebViewDelegate									,UIActionSheetDelegate > {
	BOOL hidden,rotate,siteloading;
	NSMutableString *myString; 
	UIInterfaceOrientation orient,orientmenus;
	UIWebView *myWebView;
	//UIActivityIndicatorView *activityIndicator; mem
		UIButton *myButton;
	UIButton *myButton2;
	UIButton *myButton3;
	UIToolbar *toptool;
	UIToolbar *bottomtool;
	UIImage *image5;
	UIImage *image6;

	UIButton *myButton4;
	UIButton *barsback;

	//@synthesize activityIndicator;
	//[self.activityIndicator stopAnimating];
	//IBOutlet UIActivityIndicatorView *activityIndicator;
	IBOutlet UIActivityIndicatorView *activityIndicator;
	IBOutlet UITextField *search;
	IBOutlet UITextField *website;

	UILabel *label;

   
}
@property (nonatomic, retain) /*IBOutlet*/ UIActivityIndicatorView *activityIndicator;


@property (nonatomic, retain) IBOutlet UIWebView *myWebView;
@property (nonatomic, retain) IBOutlet UIButton *myButton;
@property (nonatomic, retain) IBOutlet UIButton *myButton2;
@property (nonatomic, retain) IBOutlet UIButton *myButton3;
@property (nonatomic, retain) IBOutlet UIButton *myButton4;
@property (nonatomic, retain) IBOutlet UIButton *barsback;

@property (nonatomic, retain) IBOutlet UITextField *search;
@property (nonatomic, retain) IBOutlet UITextField *website;
@property (nonatomic, retain) IBOutlet UIToolbar *toptool;
@property (nonatomic, retain) IBOutlet UIToolbar *bottomtool;

@property(nonatomic) BOOL clearsOnBeginEditing;




@property (nonatomic, retain) IBOutlet UILabel *label;

//@property (nonatomic, retain) UITextField *textField;
- (IBAction)websitepressed:(id)sender;

- (IBAction)searchpressed:(id)sender;
- (IBAction)buttonPressed:(id)sender;
- (IBAction)button2Pressed:(id)sender;
- (IBAction)button3Pressed:(id)sender;
- (IBAction)button4Pressed:(id)sender;
- (IBAction)barsPressed:(id)sender;



//@property (nonatomic, retain) IBOutlet UIWebView *myWebView;




@end

