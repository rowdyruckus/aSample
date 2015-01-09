//
//  web3ViewController.m
//  web3
//
//  Created by JONATHAN GILES on 2/20/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import "web3ViewController.h"

@implementation web3ViewController

@synthesize myWebView;
@synthesize  myButton;
@synthesize activityIndicator;
@synthesize label;
@synthesize search;
@synthesize website;
@synthesize barsback;

//@synthesize label;

//[self.activityIndicator stopAnimating];

- (void)viewDidLoad {//:(UIApplication *)application {
	//- (void)applicationDidFinishLaunching:(UIApplication *)application {	

	//UIApplication *application;
//	[application setStatusBarStyle:UIStatusBarStyleBlackTranslucent animated:NO];
//	[application setStatusBarHidden:NO animated:YES];


	//search.borderStyle = UITextBorderStyleRoundedRect;
    search.textColor = [UIColor blueColor];
	search.placeholder = @"Google";
	//search.text=@"grr";
	//search.clearsOnBeginEditing=NO;
    //urlField.delegate = self;
	//search.backgroundColor = [UIColor yellowColor];
	//search.autoresizingMask = UIViewAutoresizingFlexibleWidth;
	website.autoresizingMask = UIViewAutoresizingFlexibleWidth;

	
	search.clearButtonMode = UITextFieldViewModeAlways;// WhileEditing;
	website.clearButtonMode = UITextFieldViewModeAlways;// WhileEditing;

	image5 = [UIImage imageNamed:@"open.png"];//}
	image6 = [UIImage imageNamed:@"closed.png"];//}
/*	UIImage *image = [UIImage imageNamed:@"switch2.png"];
	UIImage *imagep = [UIImage imageNamed:@"switch2up.png"];
	[myButton setImage:image forState:UIControlStateNormal];
	[myButton setImage:imagep forState:UIControlStateHighlighted];
	//[myButton setBackgroundImage:image forState:UIControlStateNormal];
	[image release];[imagep release];
*/	
	//stopLoading
	
	myWebView.scalesPageToFit=YES;
	//myWebView.stoploading;
	rotate=YES;hidden=NO;
	//[barsback setFrame:CGRectMake(10,510,20,20)];
	[bottomtool setFrame:CGRectMake(0,430,320,30)];
	
	[myWebView setFrame:CGRectMake(0,45,320,385)];
	[barsback setFrame:CGRectMake(13,510,20,20)];
	
	//[self.activityIndicator startAnimating];
	//[[UIApplication sharedApplication] setNetworkActivityIndicatorVisible:NO];

    [super viewDidLoad];

	NSString *homepage = @"google";
	NSUserDefaults *prefs = [NSUserDefaults standardUserDefaults];
	[prefs setObject:homepage forKey:@"myNumber1"];
	[prefs synchronize];
	
	NSString *homepage2 = [prefs objectForKey: @"myNumber1"];
		
	myString = [NSString stringWithFormat:@"http://%@.com",homepage2];
	[myWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:myString]]];
//	NSURLConnection *conn = [[NSURLConnection alloc] initWithRequest:[NSURLRequest requestWithURL:referralURL] delegate:self startImmediately:YES];
 //   [conn release];
	
	//[myWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:myNumber2]]];

  //  [myWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://google.com/"]]];
}
//UIWebViewDelegate
- (void)webViewDidStartLoad:(UIWebView *)myWebView {
	[self.activityIndicator startAnimating];
	[[UIApplication sharedApplication] setNetworkActivityIndicatorVisible:YES];
	//label.hidden = NO;
/*	UIImage *image = [UIImage imageNamed:@"redx.png"];
	UIImage *imagep = [UIImage imageNamed:@"redx.png"];
	[myButton setImage:image forState:UIControlStateNormal];
	[myButton setImage:imagep forState:UIControlStateHighlighted];
	//[myButton setBackgroundImage:image forState:UIControlStateNormal];
	[image release];[imagep release];siteloading=YES;
*/	//[myWebView:reload]  NSURLResponse
	//NSURLResponse *response;
//	label.text= [NSMutableString stringWithFormat:@"%@",myString];
//	label.hidden = NO;
	//NSURLConnection *conn = [[NSURLConnection alloc] initWithRequest:[NSURLRequest requestWithURL:referralURL] delegate:self startImmediately:YES];
    //[conn release];
}
/*
// Save the most recent URL in case multiple redirects occur
// "iTunesURL" is an NSURL property in your class declaration
- (NSURLRequest *)connection:(NSURLConnection *)connection willSendRequest:(NSURLRequest *)request redirectResponse:(NSURLResponse *)response {
    self.iTunesURL = [response URL];
    return request;
}

// No more redirects; use the last URL saved
- (void)connectionDidFinishLoading:(NSURLConnection *)connection {
    [[UIApplication sharedApplication] openURL:self.iTunesLink];
}



}
*/
//- (void)reload
//{

//}
//Stop the activity when the page stop loading
- (void)webViewDidFinishLoad:(UIWebView *)myWebView {
	[self.activityIndicator stopAnimating];
	[[UIApplication sharedApplication] setNetworkActivityIndicatorVisible:NO];
	//label.hidden = YES;
	/*UIImage *image = [UIImage imageNamed:@"reload.png"];
	UIImage *imagep = [UIImage imageNamed:@"reload.png"];
	[myButton setImage:image forState:UIControlStateNormal];
	[myButton setImage:imagep forState:UIControlStateHighlighted];
	//[myButton setBackgroundImage:image forState:UIControlStateNormal];
	[image release];[imagep release];siteloading=NO;
	//[myWebView release];
	 */
	
	//NSString  *filetext=[NSString stringWithContentsOfFile:filename encoding:NSUTF8StringEncoding error:NULL];
//	[myWebView release];

  }


//Show error message and stop activity if loading page fails


- (void)webView:(UIWebView *)myWebView didFailLoadWithError:(NSError *)error {
	
	UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Error" message:@"Requested page cannot be loaded"  delegate:self cancelButtonTitle:nil  otherButtonTitles: @"Ok", nil];       
	[alert show];
	[alert release];
	[activityIndicator stopAnimating];
	[[UIApplication sharedApplication] setNetworkActivityIndicatorVisible:NO];

	
}
 
- (void)actionSheet:(UIActionSheet *)modalView clickedButtonAtIndex:(NSInteger)buttonIndex
{
	switch (buttonIndex)
	{
		/*case 0:
		{
			[UIApplication sharedApplication].statusBarStyle = UIStatusBarStyleDefault;
		//	mailto
			
			
		//	NSURL *url = [[NSURL alloc] initWithString:@"mailto:k@yahoo.com?subject=This is my subject&body=this is the body"];
		//	[[UIApplication sharedApplication] openURL:url];
		
			//[[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"mailto://whoever@whatever.com"]];//whoever@whatever.com"]];

			NSString *subject = [@"Your Subject" stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
			
			NSString  *body = [@"Your message Body"stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
			
			NSString *mailString = [NSString stringWithFormat: @"mailto:%@?subject=%@&body=%@",
									
									subject,
									
									subject,
									
									body];
			
			NSURL *urlString = [NSURL URLWithString:mailString];
			
		//	eMailSent =
			[[UIApplication sharedApplication] openURL: urlString];
			
			
			self.navigationController.navigationBar.barStyle = UIBarStyleDefault;
			break;
		}
		*/
		case 0:
		{
			toptool.tintColor = [UIColor blackColor];
			bottomtool.tintColor = [UIColor blackColor];
		
			break;
		}
	/*	case 2:
		{
			toptool.tintColor = [UIColor redColor];
			bottomtool.tintColor = [UIColor redColor];
		
			break;
		}	*/
		case 1:
		{
			toptool.tintColor = [UIColor blueColor];
			bottomtool.tintColor = [UIColor blueColor];
			break;
		}
		case 2:
		{
			toptool.tintColor = [UIColor purpleColor];
			bottomtool.tintColor = [UIColor purpleColor];
	
			break;
		}	
		case 3:
		{			
			
			
			
			NSString *mailString = [NSString stringWithFormat: @"mailto:giles73@gmail.com?subject=BrowserSupport&body="];
			
			NSURL *urlString = [NSURL URLWithString:mailString];
			
			[[UIApplication sharedApplication] openURL: urlString];

			break;
		}
		case 4:
		{			
			UIApplication * application=[UIApplication sharedApplication];
			[application openURL:
			 [NSURL URLWithString:@"itms://www.itunes.com/apps/quickbrowser"]];
			
			break;
		}
	
	}
}



- (void)dialogOtherAction
{
	// open a dialog with two custom buttons
	UIActionSheet *actionSheet = [[UIActionSheet alloc] initWithTitle:@""
															 delegate:self cancelButtonTitle:nil
 destructiveButtonTitle:nil
													otherButtonTitles:@"Black Theme",@"Blue Theme",@"Purple Theme",@"Email Support",@"Write Review", nil];
	//actionSheet.tintColor = [UIColor blueColor]; mem

	actionSheet.actionSheetStyle = UIActionSheetStyleAutomatic; //UIActionSheetStyleDefault;
	//actionSheet.destructiveButtonIndex = 1;	// make the second button red (destructive)
	//if (buttoninde
	[actionSheet showInView:self.view]; // show from our table view (pops up in the middle of the table)
	[actionSheet release];
}



- (BOOL)textFieldShouldReturn:(UITextField *)theTextField {
	
//	[self.activityIndicator stopAnimating];
//	[[UIApplication sharedApplication] setNetworkActivityIndicatorVisible:NO];
		
	//	self.string = textField.text;
		
	/*NSString *nameString = website.text;// string;
		if ([nameString length] == 0) {
			nameString = @"World";
		}
		NSString *greeting = [[NSString alloc] initWithFormat:@"Hello, %@!", nameString];
		//label.text = @"";//greeting;
		[greeting release];*/
//	[myString release];
	
// mem management            looks
	
// search :)   and website, reload and stop
	
	//mail,homepage,bookmarks?
	
// tabs, history? rss?,	invert colors, free mem?  cheat start up?


	
return YES;}
//

- (IBAction)websitepressed:(id)sender {
	
	///  sounds,  click this link really?
	
	//deleteCharactersInRange mem
	myString = [NSMutableString stringWithFormat:@"%@",website.text];
		NSString *myString8 = [myString stringByReplacingOccurrencesOfString :@"com"withString:@"cOM"];
	NSString *myString9 = [myString stringByReplacingOccurrencesOfString :@"http"withString:@"hTTp"];

	if ((myString9==myString)&&(myString8==myString)) 
		myString = [NSString stringWithFormat:@"http://%@.com",myString];
	else  if ((myString9!=myString)&&(myString8!=myString)) myString = [NSString stringWithFormat:@"%@",myString];
		else  if ((myString9==myString)&&(myString8!=myString)) myString = [NSString stringWithFormat:@"http://%@",myString];

	[myWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:myString]]];
	myString8=nil;
	[myString8 release];
	myString9=nil;
	[myString9 release];
	//[self.activityIndicator startAnimating];
	//[[UIApplication sharedApplication] setNetworkActivityIndicatorVisible:YES];

}

- (IBAction)searchpressed:(id)sender {
	
	
	//NSString *myString = [NSString stringWithFormat:@"http://google%@.com",hh];
	//NSString *myString = @"http://nfl.com";//,search.text;
	
	NSMutableString *myString33 = [NSMutableString stringWithFormat:@"http://www.google.com/#/m/search?q=%@",search.text];

	//myString = [NSMutableString stringWithFormat:@"http://www.google.com/#/m/search?q=%@",search.text];
	
	NSString *myString7 = [myString33 stringByReplacingOccurrencesOfString :@" "withString:@"+"];

	// myWebView=nil;
	//[myWebView release];
	//UIWebView *myWebView;
	
	[myWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:myString7]]];
	myString7=nil;
	[myString7 release];
	myString33=nil;
	[myString33 release];
	//[self.activityIndicator startAnimating];
	//[[UIApplication sharedApplication] setNetworkActivityIndicatorVisible:YES];

}//

 - (IBAction)buttonPressed:(id)sender {
	 [self dialogOtherAction];

 //NSString *myString = @"http://yahoo.com";
 //[myWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:myString]]];
	// [self.activityIndicator stopAnimating];
	// [[UIApplication sharedApplication] setNetworkActivityIndicatorVisible:NO];
 }//

- (IBAction)button2Pressed:(id)sender {
	//
	//myWebView.reload; 

	rotate=!rotate;
	
	if (rotate==YES) {
		[myButton setImage:image5 forState:UIControlStateNormal];
		[myButton setImage:image5 forState:UIControlStateHighlighted];
		//[image5 release];  commit
	}
	
	if (rotate==NO) {
		//UIImage *image6 = [UIImage imageNamed:@"lockg2.png"];//}
		[myButton setImage:image6 forState:UIControlStateNormal];
		[myButton setImage:image6 forState:UIControlStateHighlighted];
	//[image5 release];
	}
	//[ shouldAutorotateToInterfaceOrientation ]

}//

- (IBAction)button3Pressed:(id)sender {
	//NSString *myString3 = @"http://nfl.com";
	//[myWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:myString3]]];
	
}//
//- (IBAction)barsPressed:(id)sender {
	//NSString *myString3 = @"http://nfl.com";
	//[myWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:myString3]]];
	
//}

- (IBAction)button4Pressed:(id)sender {
	
	//toptool.barStyle = UIBarStyleDefault;
	CGRect mainViewBounds = self.view.bounds;
	//UIInterfaceOrientation *interfaceOrientation;
	hidden=!hidden;//rotate=!rotate;
	[UIView beginAnimations:nil context:nil];

	if (orientmenus== UIDeviceOrientationPortrait){
	if (hidden==YES){
		//toptool.tintColor = [UIColor cyanColor];
		
		[toptool setFrame:CGRectMake(0,-50,320,50)];
		[bottomtool setFrame:CGRectMake(0,480,320,50)];

		[myWebView setFrame:CGRectMake(0,0,320,465)];
		[barsback setFrame:CGRectMake(12,430,30,30)];

	}

	if (hidden==NO){
		//toptool.tintColor = [UIColor redColor];

		[toptool setFrame:CGRectMake(0,0,320,45)];
	//	[bottomtool setFrame:CGRectMake(0,415,320,45)];
		[bottomtool setFrame:CGRectMake(0,430,320,30)];

		[myWebView setFrame:CGRectMake(0,45,320,385)];
		[barsback setFrame:CGRectMake(13,510,20,20)];

	}
	}
	else{
		if (hidden==YES){
			[toptool setFrame:CGRectMake(0,-50,480,50)];
			[bottomtool setFrame:CGRectMake(0,320,480,50)];

			[myWebView setFrame:CGRectMake(0,0,480,305)];
			[barsback setFrame:CGRectMake(12,270,30,30)];
		//	else [barsback setFrame:CGRectMake(10,422,30,30)];
		}
		
		if (hidden==NO){
			[toptool setFrame:CGRectMake(0,0,480,45)];
		//	[bottomtool setFrame:CGRectMake(0,255,480,45)];
			[bottomtool setFrame:CGRectMake(0,270,480,30)];

			[myWebView setFrame:CGRectMake(0,45,480,245)];
			[barsback setFrame:CGRectMake(10,320,30,30)];

		}
	}
	//tableView.frame = CGRectMake(...);
	[UIView commitAnimations];
/*
	// size up the toolbar and set its frame
	[toolbar sizeToFit];
	CGFloat toolbarHeight = [toolbar frame].size.height;
	CGRect mainViewBounds = self.view.bounds;
	[toolbar setFrame:CGRectMake(CGRectGetMinX(mainViewBounds),
								 CGRectGetMinY(mainViewBounds) + CGRectGetHeight(mainViewBounds) - (toolbarHeight * 2.0) + 2.0,
								 CGRectGetWidth(mainViewBounds),
								 toolbarHeight)];
	
	[self.view addSubview:toolbar];
	
	//currentSystemItem = UIBarButtonSystemItemDone;
	//[self createToolbarItems];
	
	
*/	
	//toptool.origin.y+=100;
	//myFrame.origin.y += 100;     // whatever absolute or relative amount
	//[View setFrame:myFrame];
	//sethidden
//uito
//	NSString *myString4 = @"http://god.com";
//	[myWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:myString4]]];
	
}//


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
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
}
*/



// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
	orient=interfaceOrientation;
	//label.text=interfaceOrientation;
	if (rotate==YES){
	if (hidden==YES){
	if (orient!=UIDeviceOrientationPortrait) [barsback setFrame:CGRectMake(10,263,30,30)];
	else [barsback setFrame:CGRectMake(10,422,30,30)];
	}
	else{
		if (orient==UIDeviceOrientationPortrait) [barsback setFrame:CGRectMake(10,480,30,30)];

	}
	}
    // Return YES for supported orientations
	
	
	if ((rotate==YES) &&(orient!=UIDeviceOrientationPortraitUpsideDown))  {
		orientmenus=interfaceOrientation;	return YES;
	}
	else return NO;

}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning]; // Releases the view if it doesn't have a superview
    // Release anything that's not essential, such as cached data
	[myWebView release];       //
	[search release];        //
	[website release];      //
	
}


- (void)dealloc {
	[myWebView release];
	[search release];
	[website release];
    [super dealloc];
}

@end
