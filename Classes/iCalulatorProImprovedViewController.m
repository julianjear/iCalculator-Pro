//
//  iCalulatorProImprovedViewController.m
//  iCalulatorProImproved
//
//  Created by julian Emilio alvarez on 3/26/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "iCalulatorProImprovedViewController.h"
#define deg2rad (3.1415926/180.0)
#import "GCMathParser.h"
#import "Mortgage.h"
#import "iCalulatorProImprovedAppDelegate.h"
#import "ColorPickerView.h"

@implementation iCalulatorProImprovedViewController

@synthesize mainPortraitView;
@synthesize mainLandscapeView;
@synthesize mainEquationView;
@synthesize settingsView;
@synthesize helpView;
@synthesize aboutView;
@synthesize mortgageView;
@synthesize loanView;
@synthesize helpLandView;



@synthesize pickerViewController;
@synthesize colorPickerViewController;

@synthesize lblDisplay;
@synthesize lblNumber;
@synthesize lblTax;
@synthesize lblTip;
@synthesize soundButton;
@synthesize webView;

@synthesize lblDisplay2;
@synthesize lblNumber2;
@synthesize lblTax2;
@synthesize lblTip2;
@synthesize lblAngle;
@synthesize soundButton2;
@synthesize webView2;
@synthesize eqButton;
@synthesize eqExit;


@synthesize expEvaluateButton;
@synthesize expInputTextField;
@synthesize expResultTextField;

@synthesize txtDisplayEQ;
@synthesize txtViewEQ;

@synthesize settingsButton;
@synthesize helpButton;
@synthesize aboutButton;
@synthesize mortgageButton;
@synthesize loanButton;
@synthesize helpLandButton;



@synthesize btn0;
@synthesize btn1;
@synthesize btn2;
@synthesize btn3;
@synthesize btn4;
@synthesize btn5;
@synthesize btn6;
@synthesize btn7;
@synthesize btn8;
@synthesize btn9;
@synthesize btnAdd;
@synthesize btnSubtract;
@synthesize btnMultiply;
@synthesize btnDivide;
@synthesize btnC;
@synthesize btnMC;
@synthesize btnMR;
@synthesize btnMMinus;
@synthesize btnMPlus;
@synthesize btnPercent;
@synthesize btnSquare;
@synthesize btnEquals;
@synthesize btnBack;
@synthesize btnNegative;
@synthesize btnPower;
@synthesize btnPower2;
@synthesize btnPower3;
@synthesize btnNoSound;
@synthesize btnSettax;
@synthesize btnSettip;
@synthesize btnTipPlus;
@synthesize btnTaxPlus;
@synthesize btnSound;
@synthesize btnDecimal;




@synthesize btn0lnd;
@synthesize btn1lnd;
@synthesize btn2lnd;
@synthesize btn3lnd;
@synthesize btn4lnd;
@synthesize btn5lnd;
@synthesize btn6lnd;
@synthesize btn7lnd;
@synthesize btn8lnd;
@synthesize btn9lnd;
@synthesize btnAddlnd;
@synthesize btnSubtractlnd;
@synthesize btnMultiplylnd;
@synthesize btnDividelnd;
@synthesize btnClnd;
@synthesize btnMClnd;
@synthesize btnMRlnd;
@synthesize btnMMinuslnd;
@synthesize btnMPluslnd;
@synthesize btnPercentlnd;
@synthesize btnSquarelnd;
@synthesize btnEqualslnd;
@synthesize btnBacklnd;
@synthesize btnNegativelnd;
@synthesize btnPowerlnd;
@synthesize btnPower2lnd;
@synthesize btnPower3lnd;
@synthesize btnNoSoundlnd;
@synthesize btnSettaxlnd;
@synthesize btnSettiplnd;
@synthesize btnTipPluslnd;
@synthesize btnTaxPluslnd;
@synthesize btnSoundlnd;
@synthesize btnDecimallnd;
@synthesize btnTaxMinuslnd;




@synthesize btn0eq;
@synthesize btn1eq;
@synthesize btn2eq;
@synthesize btn3eq;
@synthesize btn4eq;
@synthesize btn5eq;
@synthesize btn6eq;
@synthesize btn7eq;
@synthesize btn8eq;
@synthesize btn9eq;
@synthesize btnAddeq;
@synthesize btnSubtracteq;
@synthesize btnMultiplyeq;
@synthesize btnDivideeq;
@synthesize btnCeq;
@synthesize btnMCeq;
@synthesize btnMReq;
@synthesize btnMMinuseq;
@synthesize btnMPluseq;
@synthesize btnPercenteq;
@synthesize btnSquareeq;
@synthesize btnEqualseq;
@synthesize btnBackeq;
@synthesize btnNegativeeq;
@synthesize btnPowereq;
@synthesize btnPower2eq;
@synthesize btnPower3eq;
@synthesize btnNoSoundeq;
@synthesize btnSettaxeq;
@synthesize btnSettipeq;
@synthesize btnTipPluseq;
@synthesize btnTaxPluseq;
@synthesize btnSoundeq;
@synthesize btnDecimaleq;
@synthesize btnSinheq;
@synthesize btnAsineq;
@synthesize btnSineq;
@synthesize btnRoundeq;
@synthesize btnUndoeq;
@synthesize btnDeleq;
@synthesize btnOpenPareq;
@synthesize btnTruneq;
@synthesize btnCoseq;
@synthesize btnAcoseq;
@synthesize btnCosheq;
@synthesize btnDtoreq;
@synthesize btnRtodeq;
@synthesize btnTanheq;
@synthesize btnAtaneq;
@synthesize btnTaneq;
@synthesize btnAbseq;
@synthesize btnClosePareq;
@synthesize btnHomeeq;
@synthesize btnLefteq;
@synthesize btnDoublePareq;
@synthesize btn1overXeq;
@synthesize btnLneq;
@synthesize btnLogeq;
@synthesize btnEoverXeq;
@synthesize btnPieq;
@synthesize btnRighteq;
@synthesize btnEndeq;
@synthesize btnSigneq;
@synthesize btnDegeq;
@synthesize btnRadeq;

@synthesize purchasePrice;
@synthesize downPayment;
@synthesize mortgageTerm;
@synthesize interestRate;
@synthesize propertyTax;
@synthesize propertyInsurance;
@synthesize loanAmount;
@synthesize loanTerm;
@synthesize interestRateLoan;
@synthesize monthlyUntil;
@synthesize monthlyAfter;
@synthesize payments;
@synthesize payDate;
@synthesize monthlyPrinciple;
@synthesize payDateLoan;
@synthesize paymentsLoan;
@synthesize webQuotes;
@synthesize webLoanQuotes;
@synthesize processing;
@synthesize btnDeg;


- (IBAction)evaluate:(id) sender{
	
	
	@try{
		NSString* input = txtViewEQ.text ;
		
		if([input length] > 0 )
		{
			if ( _parser == nil ){
				if(lblAngle.text == @"DEG")
				{input=[self dtorFunction:txtViewEQ.text];}
				
				txtDisplayEQ.text=[[NSString alloc] initWithFormat:@"%g", [input evaluateMath]];
			}	
				//else
			//[txtDisplayEQ.text setDoubleValue:[_parser evaluate:input]];
		}
		[self formatValue:txtDisplayEQ];
	}
	@catch (NSException *ex) {
		//txtDisplayEQ.text=@"Error";
		txtDisplayEQ.text=ex.name;
	}
	
}


-(NSString*) dtorFunction:(NSMutableString *) strFunction {

	NSMutableString *Result=[[NSMutableString alloc] init];
	Result=strFunction;
	
	//int firstParent= [strFunction rangeOfString:@"sin"].location + 3;
	//NSRange leftRange=NSMakeRange(firstParent, 1);
	[Result replaceOccurrencesOfString:@"(" withString:@"(dtor(" options:NSCaseInsensitiveSearch range:NSMakeRange(0, [strFunction length])];
	
	//NSString *Temp = [strFunction substringWithRange:NSMakeRange(firstParent, 500)];
	
	int lastParent= [Result rangeOfString:@")"].location;
	NSRange rightRange=NSMakeRange(lastParent, 1);
	
	
	[Result replaceOccurrencesOfString:@")" withString:@"))" options:NSCaseInsensitiveSearch range:rightRange];
	return Result;
	
}	



- (IBAction) retainParserAction:(id) sender {
	
	if ([sender intValue] == 1 && _parser == nil )
	{
		_parser = [[GCMathParser alloc] init];
	}
	else if ([sender intValue] == 0 && _parser != nil )
	{
		[_parser release];
		_parser = nil;
	}
	
}


/*-(IBAction)callMortgage:(id)sender{
	mortgage = [[Mortgage alloc] init];
	float *myQuota= [mortgage calcQuota:0.0];
	myQuota=nil;
}*/



-(IBAction)callMortgage:(id)sender{
	processing.hidden=NO;
	[processing startAnimating];
	
	mortgage = [[Mortgage alloc] init];
	NSString *myQuotas= [mortgage calcQuota:[purchasePrice.text floatValue] withVarPercentDownPayment:[downPayment.text floatValue]/100 withVarAPR:[interestRate.text floatValue] withVarTermYears:[mortgageTerm.text floatValue] withVarPropTaxes:[propertyTax.text floatValue] withVarPropInsurance:[propertyInsurance.text floatValue]];

	NSString *A=@"<html><body style=""font-size:12px""><p>";
	NSString *B=@"</p></body></html>";
		
	
	NSString *html=[NSString stringWithFormat:@"%@ %@ %@",A,myQuotas,B];
	[webQuotes loadHTMLString:html baseURL:[NSURL URLWithString:@"http://www.google.com"]];
	
	[processing stopAnimating];
	processing.hidden=YES;

}


-(IBAction)resetMortgage:(id)sender{
	/*purchasePrice.text=@""; 
	downPayment.text =@"";
	interestRate.text =@"";
	mortgageTerm.text =@"";
	propertyTax.text =@"";
	propertyInsurance.text=@""; */
	
	
	NSString *A=@"<html><body style=""font-size:12px""><p>";
	NSString *B=@"</p></body></html>";
	
	NSString *html=[NSString stringWithFormat:@"%@ %@",A,B];
	[webQuotes loadHTMLString:html baseURL:[NSURL URLWithString:@"http://www.google.com"]];
	
}


-(IBAction)callLoan:(id)sender{
	
	processing.hidden=FALSE;
	[processing startAnimating];
	mortgage = [[Mortgage alloc] init];
	NSString *myQuotas= [mortgage calcQuota:[loanAmount.text floatValue] withVarPercentDownPayment:0 withVarAPR:[interestRateLoan.text floatValue] withVarTermYears:[loanTerm.text floatValue] withVarPropTaxes:0 withVarPropInsurance:0];
	
	NSString *A=@"<html><body style=""font-size:12px""><p>";
	NSString *B=@"</p></body></html>";
	
	
	NSString *html=[NSString stringWithFormat:@"%@ %@ %@",A,myQuotas,B];
	[webLoanQuotes loadHTMLString:html baseURL:[NSURL URLWithString:@"http://www.google.com"]];
	processing.hidden=TRUE;
	[processing stopAnimating];
}

-(IBAction)resetLoan:(id)sender{
	
	loanAmount.text = @""; 
	interestRateLoan.text = @""; 
	loanTerm.text=@""; 
	
	NSString *A=@"<html><body style=""font-size:12px""><p>";
	NSString *B=@"</p></body></html>";
	NSString *html=[NSString stringWithFormat:@"%@ %@",A,B];
	[webLoanQuotes loadHTMLString:html baseURL:[NSURL URLWithString:@"http://www.google.com"]];
}


/*
 // The designated initializer. Override to perform setup that is required before the view is loaded.
 - (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
 if ((self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil])) {
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



// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
	
	
	
	// Make the view aware of orientation changes.
	orientation = [[UIDevice currentDevice] orientation];
	/*if (orientation == UIDeviceOrientationPortrait || orientation == UIDeviceOrientationPortraitUpsideDown) {
	 orientation = UIDeviceOrientationPortrait;
	 templblTax = lblTax;	
	 templblTip = lblTip;
	 templblNumber=lblNumber;
	 }else if (orientation == UIDeviceOrientationLandscapeLeft || orientation == UIDeviceOrientationLandscapeRight) {
	 templblTax = lblTax2;	
	 templblTip = lblTip2;
	 templblNumber = lblNumber2;
	 orientation = UIDeviceOrientationLandscapeLeft;
	 }*/
	
	
	firstNumber=0;
	lastText=[[NSMutableArray alloc] init];
	
	[[UIDevice currentDevice] beginGeneratingDeviceOrientationNotifications];
	[[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(didRotate:) name:@"UIDeviceOrientationDidChangeNotification"  object:nil];
	[[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(textDidChange:) name:@"UITextViewTextDidChangeNotification"  object:nil];
	
	
	UIView *emptyView=[[UIView alloc] initWithFrame:CGRectMake(0,0,0,0)];
	txtViewEQ.inputView=emptyView;
	
	//mainLandscapeView.backgroundColor = [UIColor colorWithRed:1 green:0.6 blue:0.8 alpha:1]; //[UIColor redColor];
	
	iCalulatorProImprovedAppDelegate *mainDelegate = (iCalulatorProImprovedAppDelegate *)[[UIApplication sharedApplication] delegate];
	NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
	mainDelegate.gTheme=[userDefaults valueForKey:varTheme];
	
	UIColor* tColor = [UIColor colorWithRed:[userDefaults floatForKey:@"cr"] green:[userDefaults floatForKey:@"cg"] blue:[userDefaults floatForKey:@"cb"] alpha:[userDefaults floatForKey:@"ca"]];
	
	if (tColor != nil) {
		mainDelegate.bgColor=tColor;
	}

	if (mainDelegate.gTheme== nil) {
		mainDelegate.gTheme  =@"Gray";
	}
	
	[self setButtonImage:mainDelegate.gTheme];

	[super viewDidLoad];
	

	[emptyView release];
}



#pragma mark orientationViewSwappingLogic

- (void)textDidChange:(NSNotification *)notification {
	[[NSNotificationCenter defaultCenter] removeObserver:self name:@"UITextViewTextDidChangeNotification"  object:nil];
	BOOL undoFlag=NO;

	
	if ([txtViewEQ.text length]!=0) {
		
		NSString *mySelection=[[NSString alloc] init];
		mySelection=[txtViewEQ.text substringWithRange:NSMakeRange(txtViewEQ.selectedRange.location-1, 1)];
		
		if ([mySelection compare:@"U"] == NSOrderedSame)  {
			if ([txtViewEQ.text length] == 1) {
				txtViewEQ.text=@"";
				[[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(textDidChange:) name:@"UITextViewTextDidChangeNotification"  object:nil];
				return;
			}
			
			
			if ([lastText count] == 1) {
				txtViewEQ.text=@"";
			}else {
				txtViewEQ.text=[lastText objectAtIndex:[lastText count]-2] ;

			}
			
			[lastText removeObjectAtIndex:[lastText count]-1];
			undoFlag=YES;
			
			
		}
		
		if ([txtViewEQ.text compare:@"0"] == NSOrderedSame) {
			txtViewEQ.text = @"";
		}
		
		if (undoFlag==NO && [txtViewEQ.text length] > 0) {
			[lastText addObject:[[NSString alloc] initWithString:txtViewEQ.text]];
		}
		NSLog(@"Count=%d",[lastText count]) ;
	
	
	}


	
	[[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(textDidChange:) name:@"UITextViewTextDidChangeNotification"  object:nil];
	//txtViewEQ.selectedRange=NSMakeRange([txtViewEQ.text length] , 0);
}


// orientation view swapping logic
- (void)didRotate:(NSNotification *)notification {
	UIDeviceOrientation newOrientation = [[UIDevice currentDevice] orientation];
	iCalulatorProImprovedAppDelegate *mainDelegate = (iCalulatorProImprovedAppDelegate *)[[UIApplication sharedApplication] delegate];
	
	mainLandscapeView.backgroundColor = mainDelegate.bgColor;//[UIColor colorWithRed:1 green:0.6 blue:0.8 alpha:1]; //[UIColor redColor];
	mainPortraitView.backgroundColor = mainDelegate.bgColor;//[UIColor colorWithRed:1 green:0.6 blue:0.8 alpha:1]; //[UIColor redColor];
	mainEquationView.backgroundColor = mainDelegate.bgColor;//[UIColor colorWithRed:1 green:0.6 blue:0.8 alpha:1]; //[UIColor redColor];
	self.view.backgroundColor = mainDelegate.bgColor;
	
	if (orientation != newOrientation && (newOrientation == UIDeviceOrientationLandscapeLeft || newOrientation == UIDeviceOrientationLandscapeRight || newOrientation == UIDeviceOrientationPortrait || newOrientation == UIDeviceOrientationPortraitUpsideDown)) {
		// Do your orientation logic here
		orientation=newOrientation;
		
		if ((orientation == UIDeviceOrientationLandscapeLeft || orientation == UIDeviceOrientationLandscapeRight)) {
			// Clear the current view and insert the orientation specific view.
			[self clearCurrentView];
			if (mainDelegate.eqMode == @"YES") {
				[self.view insertSubview:mainEquationView atIndex:0];
			}
			else
			{
				[self.view insertSubview:mainLandscapeView atIndex:0];
				lblDisplay2.text=lblDisplay.text;
				lblTip2.text=lblTip.text;
				lblTax2.text=lblTax.text;
				lblNumber2.text=lblNumber.text;
				templblTax = lblTax2;	
				templblTip = lblTip2;
				templblNumber = lblNumber2;
				mainDelegate.eqMode = @"NO";
			}
			
		} else if (orientation == UIDeviceOrientationPortrait || orientation == UIDeviceOrientationPortraitUpsideDown) {	
			// Clear the current view and insert the orientation specific view.
			[self clearCurrentView];	
			[self.view insertSubview:mainPortraitView atIndex:0];
			lblDisplay.text=lblDisplay2.text;
			lblTip.text = lblTip2.text;
			lblTax.text = lblTax2.text;
			lblNumber.text=lblNumber2.text;
			templblTax = lblTax;	
			templblTip = lblTip;
			templblNumber=lblNumber;
		}
		
		NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
		templblTax.text = [[NSString alloc] initWithFormat:@"%g", [userDefaults floatForKey:varTax]];
		templblTip.text = [[NSString alloc] initWithFormat:@"%g", [userDefaults floatForKey:varTip]];
		
		[self GetLabelByOrientation];
	}
	
}

// Remove current view when loading a new view
-(void) clearCurrentView {
	if (mainLandscapeView.superview) {		
		[mainLandscapeView removeFromSuperview];
	} else if (mainPortraitView.superview) {
		[mainPortraitView removeFromSuperview];
	} else if (mainEquationView.superview) {
		[mainEquationView removeFromSuperview];
	} else if (settingsView.superview) {
		[settingsView removeFromSuperview];
	} else if (helpView.superview) {
		[helpView removeFromSuperview];
	} else if (aboutView.superview) {
		[aboutView removeFromSuperview];
	} else if (mortgageView.superview) {
		[mortgageView removeFromSuperview];
	} else if (loanView.superview) {
		[loanView removeFromSuperview];
	} else if (helpLandView.superview) {
		[helpLandView removeFromSuperview];
	}

}

// New
-(IBAction)showEquation:(id)sender {	
	[UIView beginAnimations:nil context:nil];
	[UIView setAnimationDuration:1.25];
	[UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
	[UIView setAnimationTransition:UIViewAnimationTransitionCurlUp forView:self.view cache:YES];
	[self clearCurrentView];
	[self.view insertSubview:mainEquationView atIndex:0];
	[UIView commitAnimations];
	[self insertText:@""];
	iCalulatorProImprovedAppDelegate *mainDelegate = (iCalulatorProImprovedAppDelegate *)[[UIApplication sharedApplication] delegate];
	mainDelegate.eqMode = @"YES";
}

-(IBAction)exitEquation:(id)sender {	
	[UIView beginAnimations:nil context:nil];
	[UIView setAnimationDuration:1.25];
	[UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
	[UIView setAnimationTransition:UIViewAnimationTransitionCurlDown forView:self.view cache:YES];	[self clearCurrentView];
	[self.view insertSubview:mainLandscapeView atIndex:0];
	[UIView commitAnimations];
	iCalulatorProImprovedAppDelegate *mainDelegate = (iCalulatorProImprovedAppDelegate *)[[UIApplication sharedApplication] delegate];
	mainDelegate.eqMode = @"NO";
}


// New
-(IBAction)showSettings:(id)sender {	
	[UIView beginAnimations:nil context:nil];
	[UIView setAnimationDuration:1.25];
	[UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
	[UIView setAnimationTransition:UIViewAnimationTransitionFlipFromRight forView:self.view cache:YES];
	
	[self clearCurrentView];
	[self.view insertSubview:settingsView atIndex:0];
	
	
	[settingsView.superview addSubview:pickerViewController.view];
	
	[UIView commitAnimations];
	iCalulatorProImprovedAppDelegate *mainDelegate = (iCalulatorProImprovedAppDelegate *)[[UIApplication sharedApplication] delegate];
	
	NSLog(@"Selected theme: %@", mainDelegate.gTheme);
	
	if ([mainDelegate.gTheme compare:@"Gray"] == NSOrderedSame) 
		{[pickerViewController.pickerView selectRow:0 inComponent:0 animated:NO];}
	if ([mainDelegate.gTheme compare:@"Alum"] == NSOrderedSame) 
		{[pickerViewController.pickerView selectRow:1 inComponent:0 animated:NO];}
	if ([mainDelegate.gTheme compare:@"Circus"] == NSOrderedSame)
		{[pickerViewController.pickerView selectRow:2 inComponent:0 animated:NO];}
	if ([mainDelegate.gTheme compare:@"Blue"] == NSOrderedSame)
		{[pickerViewController.pickerView selectRow:3 inComponent:0 animated:NO];}
	if ([mainDelegate.gTheme compare:@"Bamboo"] == NSOrderedSame)
		{[pickerViewController.pickerView selectRow:4 inComponent:0 animated:NO];}
	if ([mainDelegate.gTheme compare:@"Sky"] == NSOrderedSame)
		{[pickerViewController.pickerView selectRow:5 inComponent:0 animated:NO];}
	if ([mainDelegate.gTheme compare:@"Marb"] == NSOrderedSame)
		{[pickerViewController.pickerView selectRow:6 inComponent:0 animated:NO];}
	if ([mainDelegate.gTheme compare:@"Exp"] == NSOrderedSame)
		{[pickerViewController.pickerView selectRow:7 inComponent:0 animated:NO];}
	if ([mainDelegate.gTheme compare:@"Wood"] == NSOrderedSame)
		{[pickerViewController.pickerView selectRow:8 inComponent:0 animated:NO];}

	NSLog(@"Selected theme: %@", mainDelegate.gTheme);

	//[pickerViewController release];
}
-(IBAction)showHelp:(id)sender {	
	[UIView beginAnimations:nil context:nil];
	[UIView setAnimationDuration:1.25];
	[UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
	[UIView setAnimationTransition:UIViewAnimationTransitionFlipFromRight forView:self.view cache:YES];
	
	[self clearCurrentView];
	[self.view insertSubview:helpView atIndex:0];
	
	
	
	
	[UIView commitAnimations];
	
	//[pickerViewController release];
}
-(IBAction)showAbout:(id)sender {	
	[UIView beginAnimations:nil context:nil];
	[UIView setAnimationDuration:1.25];
	[UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
	[UIView setAnimationTransition:UIViewAnimationTransitionFlipFromRight forView:self.view cache:YES];
	
	[self clearCurrentView];
	[self.view insertSubview:aboutView atIndex:0];
	
	[UIView commitAnimations];
	
}
-(IBAction)showMortgage:(id)sender {	
	[UIView beginAnimations:nil context:nil];
	[UIView setAnimationDuration:1.25];
	[UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
	[UIView setAnimationTransition:UIViewAnimationTransitionFlipFromRight forView:self.view cache:YES];
	
	[self clearCurrentView];
	[self.view insertSubview:mortgageView atIndex:0];
	[UIView commitAnimations];
	
}

-(IBAction)showLoan:(id)sender {	
	[UIView beginAnimations:nil context:nil];
	[UIView setAnimationDuration:1.25];
	[UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
	[UIView setAnimationTransition:UIViewAnimationTransitionFlipFromRight forView:self.view cache:YES];
	
	[self clearCurrentView];
	[self.view insertSubview:loanView atIndex:0];
	
	[UIView commitAnimations];
	
}
-(IBAction)showHelpLand:(id)sender {	
	[UIView beginAnimations:nil context:nil];
	[UIView setAnimationDuration:1.25];
	[UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
	[UIView setAnimationTransition:UIViewAnimationTransitionFlipFromRight forView:self.view cache:YES];
	
	[self clearCurrentView];
	[self.view insertSubview:helpLandView atIndex:0];
	
	[UIView commitAnimations];
	
}




-(IBAction)exitSettings:(id)sender {	
	iCalulatorProImprovedAppDelegate *mainDelegate = (iCalulatorProImprovedAppDelegate *)[[UIApplication sharedApplication] delegate];
	mainPortraitView.backgroundColor = mainDelegate.bgColor;
	
	
	const CGFloat  *components = CGColorGetComponents(mainDelegate.bgColor.CGColor);
	NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];

	[userDefaults setFloat:components[0]  forKey:@"cr"];
	[userDefaults setFloat:components[1]  forKey:@"cg"];
	[userDefaults setFloat:components[2]  forKey:@"cb"];
	[userDefaults setFloat:components[3]  forKey:@"ca"];
	
	[UIView beginAnimations:nil context:nil];
	[UIView setAnimationDuration:1.25];
	[UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
	[UIView setAnimationTransition:UIViewAnimationTransitionFlipFromLeft forView:self.view cache:YES];	
	[self clearCurrentView];
	[self.view insertSubview:mainPortraitView atIndex:0];
	[UIView commitAnimations];
	
	[self setButtonImage:mainDelegate.gTheme];
	
}
-(IBAction)exitHelp:(id)sender {	
	[UIView beginAnimations:nil context:nil];
	[UIView setAnimationDuration:1.25];
	[UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
	[UIView setAnimationTransition:UIViewAnimationTransitionFlipFromLeft forView:self.view cache:YES];	
	[self clearCurrentView];
	
	
	[self.view insertSubview:mainPortraitView atIndex:0];
	[UIView commitAnimations];
}
-(IBAction)exitAbout:(id)sender {	
	[UIView beginAnimations:nil context:nil];
	[UIView setAnimationDuration:1.25];
	[UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
	[UIView setAnimationTransition:UIViewAnimationTransitionFlipFromLeft forView:self.view cache:YES];	
	[self clearCurrentView];
	
	[self.view insertSubview:mainPortraitView atIndex:0];
	[UIView commitAnimations];
}
-(IBAction)exitMortgage:(id)sender {	
	[UIView beginAnimations:nil context:nil];
	[UIView setAnimationDuration:1.25];
	[UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
	[UIView setAnimationTransition:UIViewAnimationTransitionFlipFromLeft forView:self.view cache:YES];	
	[self clearCurrentView];
	
	[self.view insertSubview:mainPortraitView atIndex:0];
	[UIView commitAnimations];
}
-(IBAction)exitLoan:(id)sender {	
	[UIView beginAnimations:nil context:nil];
	[UIView setAnimationDuration:1.25];
	[UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
	[UIView setAnimationTransition:UIViewAnimationTransitionFlipFromLeft forView:self.view cache:YES];	
	[self clearCurrentView];
	
	[self.view insertSubview:mortgageView atIndex:0];
	[UIView commitAnimations];
}
-(IBAction)exitHelpLand:(id)sender {	
	[UIView beginAnimations:nil context:nil];
	[UIView setAnimationDuration:1.25];
	[UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
	[UIView setAnimationTransition:UIViewAnimationTransitionFlipFromLeft forView:self.view cache:YES];	
	[self clearCurrentView];
	
	[self.view insertSubview:mainEquationView atIndex:0];
	[UIView commitAnimations];
}











// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    return YES;
}

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
	
	//NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
	//[userDefaults setFloat:[templblTip.text floatValue] forKey:varTip];
	
}


-(IBAction)DegRad:(id)sender {
	
	iCalulatorProImprovedAppDelegate *mainDelegate = (iCalulatorProImprovedAppDelegate *)[[UIApplication sharedApplication] delegate];
	
	
	NSString *btn = @"btn";
	if (mainDelegate.gTheme != @"Gray") {
		btn = [btn stringByAppendingString:mainDelegate.gTheme];
	} 
	
	
	if ([lblAngle.text compare:@"RAD"] == NSOrderedSame){
		[lblAngle setText:@"DEG"];
		UIImage *img = [UIImage imageNamed:[btn stringByAppendingString:@"Rad.png"]];
		[btnDeg setImage:img forState:UIControlStateNormal];
		
	}else {
		[lblAngle setText:@"RAD"];
		UIImage *img = [UIImage imageNamed:[btn stringByAppendingString:@"Deg.png"]];
		[btnDeg setImage:img forState:UIControlStateNormal];
	}
	
}



-(IBAction)nosound:(id)sender {
	
	iCalulatorProImprovedAppDelegate *mainDelegate = (iCalulatorProImprovedAppDelegate *)[[UIApplication sharedApplication] delegate];
	
	
	NSString *btn = @"btn";
	if (mainDelegate.gTheme != @"Gray") {
		btn = [btn stringByAppendingString:mainDelegate.gTheme];
	} 
	
	
	if ([soundButton.titleLabel.text compare:@"SOUND"] == NSOrderedSame || [soundButton2.titleLabel.text compare:@"SOUND"] == NSOrderedSame){
		[soundButton setTitle:@"NO SOUND" forState:UIControlStateNormal];
		[soundButton2 setTitle:@"NO SOUND" forState:UIControlStateNormal];
		UIImage *img = [UIImage imageNamed:[btn stringByAppendingString:@"Nosound.png"]];
		[soundButton setImage:img forState:UIControlStateNormal];
		[soundButton2 setImage:img forState:UIControlStateNormal];

		
	}else {
		[soundButton setTitle:@"SOUND" forState:UIControlStateNormal];
		[soundButton2 setTitle:@"SOUND" forState:UIControlStateNormal];
		UIImage *img = [UIImage imageNamed:[btn stringByAppendingString:@"Sound.png"]];
		[soundButton setImage:img forState:UIControlStateNormal];
		[soundButton2 setImage:img forState:UIControlStateNormal];

	}
	
}


-(IBAction)doSound:(id)sender {
	if ([soundButton.titleLabel.text compare:@"NO SOUND"] == NSOrderedSame){
		
		SystemSoundID soundID;
		NSString *soundFile = [[NSBundle mainBundle]
							   pathForResource:@"Select" ofType:@"caf"];
		
		AudioServicesCreateSystemSoundID((CFURLRef)
										 [NSURL fileURLWithPath:soundFile]
										 ,&soundID);
		AudioServicesPlaySystemSound(soundID);
	}
}

-(IBAction)power2:(id)sender {
	
	NSNumber *myFloat;
	NSString *myString;
	myFloat = [NSNumber numberWithDouble:pow([[templblDisplay.text stringByReplacingOccurrencesOfString:@"," withString:@""] doubleValue],2)];
	
	/*	if (firstNumber != 0 && operation == @"+"){
	 myFloat=[NSNumber numberWithDouble:firstNumber + [myFloat doubleValue]];
	 }*/ 
	
	myString = [myFloat stringValue];
	templblDisplay.text=myString;
	
	
	if (firstNumber == 0 && operation == @""){
		lastKeyIsNumber=NO;	
		firstNumber=0;
		operation=@"p2";
	} 
	
	
	[self formatValue:templblDisplay];
}

-(BOOL)okLength:(NSString *) myString {
	if ([myString length] > 20){
		return NO;
	}
	else{
		return YES;
	}
}

-(IBAction)power3:(id)sender {
	//	pressEqual = 1;
	NSNumber *myFloat;
	NSString *myString;
	myFloat = [NSNumber numberWithDouble:pow([[templblDisplay.text stringByReplacingOccurrencesOfString:@"," withString:@""] doubleValue],3)];
	myString = [myFloat stringValue];
	templblDisplay.text=myString;	
	
	if (firstNumber == 0 && operation == @""){
		lastKeyIsNumber=NO;	
		firstNumber=0;
		operation=@"p3";
	} 
	
	
	[self formatValue:templblDisplay];
}


-(IBAction)back:(id)sender {
	
	
	if ([templblDisplay.text length] > 0) {
		templblDisplay.text = [templblDisplay.text substringToIndex:[templblDisplay.text length]-1];
	}
	
	if ([templblDisplay.text length] == 0){
		templblDisplay.text = @"0";
	}
	
	if ([templblDisplay.text compare:@"-"] == NSOrderedSame) {
		templblDisplay.text = @"0";
	}
	
	[self formatValue:templblDisplay];
	
	//[theString length];	
	
	//[templblDisplay.text substringFromIndex:3];
	//NSString *firstFour = [source substringToIndex:4];
	// firstFour is @"0123"
	//NSRange twoToSixRange = NSMakeRange(2, 4);
	//NSString *twoToSix = [source substringWithRange:twoToSixRange];
	// twoToSix is @"2345"
	
	//NSArray *split = [source componentsSeparatedByString:@"45"];
	// split contains { @"0123", @"6789" }
	
	
	/*UIAlertView *alertDialog;
	 alertDialog = [[UIAlertView alloc]
	 initWithTitle:@"test"
	 message:[NSString stringWithFormat:@"%d", [templblDisplay.text length]]
	 delegate:nil
	 cancelButtonTitle:@"Ok"
	 otherButtonTitles:nil
	 ];
	 [alertDialog show];
	 [alertDialog release];*/
	
	
	
	// allButFirstThree is @"3456789"	
	
}

-(IBAction)settip:(id)sender {
	templblTip.text = templblDisplay.text;
	NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
	[userDefaults setFloat:[templblTip.text floatValue] forKey:varTip];
	lastKeyIsNumber=NO;
	operation=@"st";
	[self formatValue:templblTip];
}

-(IBAction)tipplus:(id)sender {
	NSNumber *myFloat;
	NSString *myString;
	myFloat = [NSNumber numberWithDouble:[[templblDisplay.text stringByReplacingOccurrencesOfString:@"," withString:@""] doubleValue]*(1+[templblTip.text doubleValue]/100)];
	myString = [myFloat stringValue];
	
	templblDisplay.text = myString;
	lastKeyIsNumber=NO;
	operation=@"st";
	[self formatValue:templblDisplay];
}

-(IBAction)settax:(id)sender {
	templblTax.text = templblDisplay.text;
	NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
	[userDefaults setFloat:[templblTax.text floatValue] forKey:varTax];
	lastKeyIsNumber=NO;
	operation=@"tp";
	[self formatValue:templblTax];
}


-(IBAction)taxplus:(id)sender {
	NSNumber *myFloat;
	NSString *myString;
	myFloat = [NSNumber numberWithDouble:[[templblDisplay.text stringByReplacingOccurrencesOfString:@"," withString:@""] doubleValue]*(1+[templblTax.text doubleValue]/100)];
	myString = [myFloat stringValue];
	templblDisplay.text = myString;
	lastKeyIsNumber=NO;
	operation=@"tp";
	[self formatValue:templblDisplay];
}

-(IBAction)taxminus:(id)sender {
	NSNumber *myFloat;
	NSString *myString;
	myFloat = [NSNumber numberWithDouble:[[templblDisplay.text stringByReplacingOccurrencesOfString:@"," withString:@""] doubleValue]*100/(100+[templblTax.text doubleValue])];
	myString = [myFloat stringValue];
	templblDisplay.text = myString;
	lastKeyIsNumber=NO;
	operation=@"tm";
	[self formatValue:templblDisplay];
}


-(IBAction)memoryclear:(id)sender {
	templblNumber.text =@"0";
	memory=0;
	lastKeyIsNumber=NO;
	operation=@"mc";
}

-(IBAction)memoryremind:(id)sender {
	templblDisplay.text = templblNumber.text;
	lastKeyIsNumber=NO;
	//operation=@"mr";
}

-(IBAction)memoryplus:(id)sender; {
	memory = memory + [[templblDisplay.text stringByReplacingOccurrencesOfString:@"," withString:@""] doubleValue];
	
	NSNumber *myFloat;
	NSString *myString;
	myFloat = [NSNumber numberWithDouble:memory];
	myString = [myFloat stringValue];
	templblNumber.text=myString;
	
	[self formatValue:templblNumber];	
	lastKeyIsNumber=NO;
	operation=@"m+";
}

-(IBAction)memoryminus:(id)sender {
	memory = memory - [[templblDisplay.text stringByReplacingOccurrencesOfString:@"," withString:@""] doubleValue];
	NSNumber *myFloat;
	NSString *myString;
	myFloat = [NSNumber numberWithDouble:memory];
	myString = [myFloat stringValue];
	templblNumber.text=myString;
	
	[self formatValue:templblNumber];	
	lastKeyIsNumber=NO;
	operation=@"m-";
}

-(IBAction)findsquare:(id)sender {
	
	NSNumber *myFloat;
	NSString *myString;
	myFloat = [NSNumber numberWithDouble:sqrt([[templblDisplay.text stringByReplacingOccurrencesOfString:@"," withString:@""] doubleValue])];
	myString = [myFloat stringValue];
	templblDisplay.text=myString;
	
	if (firstNumber == 0 && operation == @""){
		lastKeyIsNumber=NO;	
		firstNumber=0;
		operation=@"sqrt";
	} 
	
	
	[self formatValue:templblDisplay];	
}

-(IBAction)percent:(id)sender {
	if (operation == @"x"){
		
		NSNumber *myFloat;
		NSString *myString;
		myFloat = [NSNumber numberWithDouble:firstNumber*[[templblDisplay.text stringByReplacingOccurrencesOfString:@"," withString:@""] doubleValue]/100];
		myString = [myFloat stringValue];
		templblDisplay.text=myString;
		
		operation = @"";
	}
	
	lastKeyIsNumber=NO;	
	firstNumber=0;
	operation=@"%";
	
	[self formatValue:templblDisplay];
}

-(IBAction)signChange:(id)sender{
	if ([templblDisplay.text compare:@"0"] != NSOrderedSame) {
		NSNumber *myFloat;
		NSString *myString;
		myFloat = [NSNumber numberWithDouble:-1*[[templblDisplay.text stringByReplacingOccurrencesOfString:@"," withString:@""] doubleValue]];
		myString = [myFloat stringValue];
		templblDisplay.text = myString;
	}
	[self formatValue:templblDisplay];
}


-(void)checkOperation {
	if (operation == @"+" || operation == @"-" || operation == @"x" || operation == @"÷" || operation == @"X^n") {
		if (lastKeyIsNumber==YES){
			[self findanswer:nil];
			operation = @"";
		}
	}
}


-(IBAction)writeplus:(id)sender {
	[self checkOperation];
	operation = @"+";
	firstNumber = [[templblDisplay.text stringByReplacingOccurrencesOfString:@"," withString:@""] doubleValue] ;
	lastKeyIsNumber=NO;
}

-(IBAction)writeminus:(id)sender {
	[self checkOperation];
	operation =@"-";
	firstNumber = [[templblDisplay.text stringByReplacingOccurrencesOfString:@"," withString:@""] doubleValue] ;
	lastKeyIsNumber=NO;	
}

-(IBAction)writepower:(id)sender {
	[self checkOperation];
	operation = @"X^n";
	firstNumber = [[templblDisplay.text stringByReplacingOccurrencesOfString:@"," withString:@""] doubleValue] ;
	lastKeyIsNumber=NO;	
}

-(IBAction)writemultiply:(id)sender {
	[self checkOperation];
	operation =@"x";
	firstNumber = [[templblDisplay.text stringByReplacingOccurrencesOfString:@"," withString:@""] doubleValue] ;
	lastKeyIsNumber=NO;	
}
-(IBAction)writedivide:(id)sender {
	[self checkOperation];
	operation =@"÷";
	firstNumber = [[templblDisplay.text stringByReplacingOccurrencesOfString:@"," withString:@""] doubleValue] ;
	lastKeyIsNumber=NO;	
}

-(IBAction)findanswer:(id)sender {
	double answer;
	
	if (operation ==@"+") { 
		answer = firstNumber + [[templblDisplay.text stringByReplacingOccurrencesOfString:@"," withString:@""] doubleValue];
	}
	
	if (operation ==@"-") { 
		answer = firstNumber - [[templblDisplay.text stringByReplacingOccurrencesOfString:@"," withString:@""] doubleValue]; 
	}
	
	if (operation ==@"x") { 
		answer = firstNumber * [[templblDisplay.text stringByReplacingOccurrencesOfString:@"," withString:@""] doubleValue]; 
	}
	
	if (operation ==@"÷") { 
		answer = firstNumber / [[templblDisplay.text stringByReplacingOccurrencesOfString:@"," withString:@""] doubleValue]; 
	}
	
	if (operation ==@"X^n") { 
		answer =  pow(firstNumber,[[templblDisplay.text stringByReplacingOccurrencesOfString:@"," withString:@""] doubleValue]) ; 
	}
	
	
	NSNumber *myFloat;
	NSString *myString;
	myFloat = [NSNumber numberWithDouble: answer];
	myString = [myFloat stringValue];
	templblDisplay.text=myString;
	
	[self formatValue:templblDisplay];
	//myString=templblDisplay.text;
	operation =@"=";
	lastKeyIsNumber=NO;
	//[self writec:nil];
	//templblDisplay.text=myString;
}

-(void)formatValue:(UILabel *) objLabel {
	objLabel.text=[objLabel.text stringByReplacingOccurrencesOfString:@"," withString:@""];
	NSString *myString=[[NSString alloc] init];
	int lastZero=0;
	myString=objLabel.text;
	
	
	NSNumber *myFloat;
	myFloat = [NSNumber numberWithDouble:[objLabel.text doubleValue]];
	if ([myFloat doubleValue]  >= 9999999999999) {
		objLabel.text=@"Error";
		return;
	}
	
	
	NSNumberFormatter *numberFormatter = [[[NSNumberFormatter alloc] init] autorelease];
	[numberFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
	[numberFormatter setGroupingSize:3];
	[numberFormatter setGroupingSeparator:@","];
	[numberFormatter setUsesGroupingSeparator:YES];
	[numberFormatter setMaximumFractionDigits:15];
	
	NSString *yourOriginalString = objLabel.text;
	NSRange rng=[yourOriginalString rangeOfString:@"."];
	if (rng.length == 0){
		objLabel.text=[numberFormatter stringFromNumber:[NSNumber numberWithDouble:[objLabel.text doubleValue]]];
	}else{	
		
		
		int myStringLength=[myString length];
		for (int i=myStringLength-1; i>0; i--) {
			NSString *myChar;
			myChar=[myString substringWithRange:NSMakeRange(i, 1)];
			if ([myChar compare:@"0"] == NSOrderedSame ) {
				lastZero=lastZero+1;
			}else {
				break;
			}
			
		}
		
		yourOriginalString = [numberFormatter stringFromNumber:[NSNumber numberWithDouble:[objLabel.text doubleValue]]];
		rng=[yourOriginalString rangeOfString:@"."];
		if (rng.length == 0){
			yourOriginalString = [yourOriginalString stringByAppendingString:@"."];
		}
		
		if (lastZero > 0) {
			for (int i=1; i<=lastZero; i++) {
				yourOriginalString = [yourOriginalString stringByAppendingString:@"0"];
			}
			lastZero=0;
		}
		objLabel.text = yourOriginalString;
	}
}


-(void)GetLabelByOrientation {
	orientation = [[UIDevice currentDevice] orientation];
	if (orientation == UIDeviceOrientationUnknown || 
		orientation == UIDeviceOrientationFaceUp || 
		orientation == UIDeviceOrientationFaceDown ||
		orientation == UIDeviceOrientationPortrait ||
		orientation == UIDeviceOrientationPortraitUpsideDown ) {
		templblDisplay = lblDisplay;
		templblTax = lblTax;
		templblTip = lblTip;
		templblNumber = lblNumber;
	}else {
		templblDisplay = lblDisplay2;
		templblTax = lblTax2;
		templblTip = lblTip2;
		templblNumber = lblNumber2;
	}
}


-(void)writeNumber:(NSString *) myNumber {
	
	if ([self okLength:templblDisplay.text] == NO){return;}
	
	
	if ([operation compare:@""] != NSOrderedSame ) {
		
		if (lastKeyIsNumber == NO){
			templblDisplay.text=@"";
		}
	}	
	
	NSString *yourOriginalString=templblDisplay.text;
	
	if ([templblDisplay.text compare:@"0"] == NSOrderedSame) {
		if ([templblDisplay.text length]==1) {
			templblDisplay.text = myNumber;
		} else {
			yourOriginalString = [yourOriginalString stringByAppendingString:myNumber];
			templblDisplay.text = yourOriginalString;
		}
	}else {
		yourOriginalString = [yourOriginalString stringByAppendingString:myNumber];
		templblDisplay.text = yourOriginalString;
	}
	
	[self formatValue:templblDisplay];
	lastKeyIsNumber=YES;
}



-(IBAction)write1:(id)sender {
	[self writeNumber:@"1" ];
}

-(IBAction)write2:(id)sender {
	[self writeNumber:@"2" ];	
}

-(IBAction)write3:(id)sender {
	[self writeNumber:@"3" ];
}

-(IBAction)write4:(id)sender {
	[self writeNumber:@"4" ];	
}

-(IBAction)write5:(id)sender {
	[self writeNumber:@"5" ];
}

-(IBAction)write6:(id)sender {
	[self writeNumber:@"6" ];	
}

-(IBAction)write7:(id)sender {
	[self writeNumber:@"7" ];
}

-(IBAction)write8:(id)sender {
	[self writeNumber:@"8" ];
}

-(IBAction)write9:(id)sender {
	[self writeNumber:@"9" ];
}

-(IBAction)write0:(id)sender {
	[self writeNumber:@"0" ];
}


-(IBAction)write1EQ:(id)sender {
	[self insertText:@"1"];
}

-(IBAction)write2EQ:(id)sender {
	[self insertText:@"2"];
}

-(IBAction)write3EQ:(id)sender {
	[self insertText:@"3"];
}

-(IBAction)write4EQ:(id)sender {
	[self insertText:@"4"];	
}

-(IBAction)write5EQ:(id)sender {
	[self insertText:@"5"];
}

-(IBAction)write6EQ:(id)sender {
	[self insertText:@"6"];
}

-(IBAction)write7EQ:(id)sender {
	[self insertText:@"7"];
}

-(IBAction)write8EQ:(id)sender {
	[self insertText:@"8"];
}

-(IBAction)write9EQ:(id)sender {
	[self insertText:@"9"];
}

-(IBAction)write0EQ:(id)sender {
	[self insertText:@"0"];
}

-(IBAction)writePlusEQ:(id)sender {
	[self insertText:@"+"];
}

-(IBAction)writeMinusEQ:(id)sender {
	[self insertText:@"-"];
}

-(IBAction)writeMultEQ:(id)sender {
	[self insertText:@"*"];
}

-(IBAction)writeDivideEQ:(id)sender {
	[self insertText:@"/"];
}

-(IBAction)writeParentLeftEQ:(id)sender {
	[self insertText:@"("];
}

-(IBAction)writeParentRightEQ:(id)sender {
	[self insertText:@")"];
}

-(IBAction)writeParentBothEQ:(id)sender {
	[self insertText:@"()"];
	[self cursorLeftEQ:nil];
}

-(IBAction)writePiEQ:(id)sender {
	[self insertText:@"pi"];
}

-(IBAction)writeDotEQ:(id)sender {
	[self insertText:@"."];
}

-(IBAction)writeSinEQ:(id)sender {
	[self insertText:@"sin()"];
	[self cursorLeftEQ:nil];
}

-(IBAction)writeCosEQ:(id)sender {
	[self insertText:@"cos()"];
	[self cursorLeftEQ:nil];
}

-(IBAction)writeTanEQ:(id)sender {
	[self insertText:@"tan()"];
	[self cursorLeftEQ:nil];
}


-(IBAction)writeSinhEQ:(id)sender {
	[self insertText:@"sinh()"];
	[self cursorLeftEQ:nil];
}

-(IBAction)writeCoshEQ:(id)sender {
	[self insertText:@"cosh()"];
	[self cursorLeftEQ:nil];
}

-(IBAction)writeTanhEQ:(id)sender {
	[self insertText:@"tanh()"];
	[self cursorLeftEQ:nil];
}

-(IBAction)writeaSinEQ:(id)sender {
	[self insertText:@"asin()"];
	[self cursorLeftEQ:nil];
}

-(IBAction)writeaCosEQ:(id)sender {
	[self insertText:@"acos()"];
	[self cursorLeftEQ:nil];
}

-(IBAction)writeaTanEQ:(id)sender {
	[self insertText:@"atan()"];
	[self cursorLeftEQ:nil];
}

-(IBAction)cursorLeftEQ:(id)sender {
	txtViewEQ.selectedRange=NSMakeRange(txtViewEQ.selectedRange.location - 1 , 0);
}

-(IBAction)cursorRightEQ:(id)sender {
	txtViewEQ.selectedRange=NSMakeRange(txtViewEQ.selectedRange.location + 1 , 0);
}

-(IBAction)pow2EQ:(id)sender {
	[self insertText:@"^2"];
}

-(IBAction)pow3EQ:(id)sender {
	[self insertText:@"^3"];
}

-(IBAction)sqrtEQ:(id)sender {
	[self insertText:@"sqrt()"];
	[self cursorLeftEQ:nil];
}

-(IBAction)lnEQ:(id)sender {
	[self insertText:@"ln()"];
	[self cursorLeftEQ:nil];
}

-(IBAction)logEQ:(id)sender {
	[self insertText:@"log()"];
	[self cursorLeftEQ:nil];
}

-(IBAction)dtorEQ:(id)sender {
	[self insertText:@"dtor()"];
	[self cursorLeftEQ:nil];
}

-(IBAction)rtodEQ:(id)sender {
	[self insertText:@"rtod()"];
	[self cursorLeftEQ:nil];
}

-(IBAction)expEQ:(id)sender {
	[self insertText:@"exp()"];
	[self cursorLeftEQ:nil];
}

-(IBAction)absEQ:(id)sender {
	[self insertText:@"abs()"];
	[self cursorLeftEQ:nil];
}

-(IBAction)truncEQ:(id)sender {
	[self insertText:@"trunc()"];
	[self cursorLeftEQ:nil];
}

-(IBAction)roundEQ:(id)sender {
	[self insertText:@"round()"];
	[self cursorLeftEQ:nil];
}

-(IBAction)invEQ:(id)sender {
	[self insertText:@"(1/)"];
	[self cursorLeftEQ:nil];
}


-(IBAction)writec:(id)sender {
	
	//UILabel *templblDisplay;
	//templblDisplay = [self GetLabelByOrientation];
	templblDisplay.text =@"0";
	lastKeyIsNumber=NO;
	firstNumber=0;
	operation = @"";
}


-(IBAction)writecEQ:(id)sender {
	if ([txtViewEQ.text compare:@""] != NSOrderedSame) {
		if ([txtDisplayEQ.text compare:@"0"] == NSOrderedSame) {
			txtDisplayEQ.text = @"";
		}
		txtViewEQ.text = @"";
	}else {
		txtDisplayEQ.text = @"";
	}
	
	lastKeyIsNumber=NO;
	firstNumber=0;
	operation = @"";
	[lastText removeAllObjects];
}

-(IBAction)delBackEQ:(id)sender {
	[self doDelBack:txtViewEQ];
	lastKeyIsNumber=NO;
	firstNumber=0;
	operation = @"";
}

-(IBAction)deleteEQ:(id)sender {
	[self doDelete:txtViewEQ];
	lastKeyIsNumber=NO;
	firstNumber=0;
	operation = @"";
}


-(IBAction)useResultEQ:(id)sender {
	txtViewEQ.text = txtDisplayEQ.text;
	txtDisplayEQ.text=@"";
	lastKeyIsNumber=NO;
	firstNumber=0;
	operation = @"";
}

-(IBAction)cursorHomeEQ:(id)sender {
	txtViewEQ.selectedRange=NSMakeRange(0 , 0);
}

-(IBAction)cursorEndEQ:(id)sender {
	txtViewEQ.selectedRange=NSMakeRange([txtViewEQ.text length] , 0);
}

-(IBAction)powerXEQ:(id)sender{
	[self insertText:@"^"];
}

-(IBAction)signEQ:(id)sender{
	[self doSignEQ:txtViewEQ];
}

-(IBAction)undoEQ:(id)sender{
	[self insertText:@"U"];
}

-(IBAction)writed:(id)sender {
	
	if (lastKeyIsNumber == NO){
		templblDisplay.text=@"0";
	}
	
	
	NSString *yourOriginalString = templblDisplay.text;
	NSRange rng=[yourOriginalString rangeOfString:@"."];
	if (rng.length == 0 || templblDisplay.text==@"0"){
		yourOriginalString = [yourOriginalString stringByAppendingString:@"."];
		templblDisplay.text = yourOriginalString;
		lastKeyIsNumber = YES;
	}
	
}

- (void)dealloc
{
	[btn0 release];
	[btn1 release];
	[btn2 release];
	[btn3 release];
	[btn4 release];
	[btn5 release];
	[btn6 release];
	[btn7 release];
	[btn8 release];
	[btn9 release];
	[btnAdd release];
	[btnSubtract release];
	[btnMultiply release];
	[btnDivide release];
	[btnC release];
	[btnMC release];
	[btnMR release];
	[btnMMinus release];
	[btnMPlus release];
	[btnPercent release];
	[btnSquare release];
	[btnEquals release];
	[btnBack release];
	[btnNegative release];
	[btnPower release];
	[btnPower2 release];
	[btnPower3 release];
	[btnNoSound release];
	[btnSettax release];
	[btnSettip release];
	[btnTipPlus release];
	[btnTaxPlus release];
	[btnSound release];
	[btnDecimal release];
	
	
	[btn0lnd release];
	[btn1lnd release];
	[btn2lnd release];
	[btn3lnd release];
	[btn4lnd release];
	[btn5lnd release];
	[btn6lnd release];
	[btn7lnd release];
	[btn8lnd release];
	[btn9lnd release];
	[btnAddlnd release];
	[btnSubtractlnd release];
	[btnMultiplylnd release];
	[btnDividelnd release];
	[btnClnd release];
	[btnMClnd release];
	[btnMRlnd release];
	[btnMMinuslnd release];
	[btnMPluslnd release];
	[btnPercentlnd release];
	[btnSquarelnd release];
	[btnEqualslnd release];
	[btnBacklnd release];
	[btnNegativelnd release];
	[btnPowerlnd release];
	[btnPower2lnd release];
	[btnPower3lnd release];
	[btnNoSoundlnd release];
	[btnSettaxlnd release];
	[btnSettiplnd release];
	[btnTipPluslnd release];
	[btnTaxPluslnd release];
	[btnSoundlnd release];
	[btnDecimallnd release];
	[lblAngle release];
	
	
	
	[btn0eq release];
	[btn1eq release];
	[btn2eq release];
	[btn3eq release];
	[btn4eq release];
	[btn5eq release];
	[btn6eq release];
	[btn7eq release];
	[btn8eq release];
	[btn9eq release];
	[btnAddeq release];
	[btnSubtracteq release];
	[btnMultiplyeq release];
	[btnDivideeq release];
	[btnCeq release];
	[btnMCeq release];
	[btnMReq release];
	[btnMMinuseq release];
	[btnMPluseq release];
	[btnPercenteq release];
	[btnSquareeq release];
	[btnEqualseq release];
	[btnBackeq release];
	[btnNegativeeq release];
	[btnPowereq release];
	[btnPower2eq release];
	[btnPower3eq release];
	[btnNoSoundeq release];
	[btnSettaxeq release];
	[btnSettipeq release];
	[btnTipPluseq release];
	[btnTaxPluseq release];
	[btnSoundeq release];
	[btnDecimaleq release];
	[btnSinheq release];
	[btnAsineq release];
	[btnRoundeq release];
	[btnUndoeq release];
	[btnDeleq release];
	[btnOpenPareq release];
	[btnTruneq release];
	[btnCoseq release];
	[btnAcoseq release];
	[btnCosheq release];
	[btnDtoreq release];
	[btnHomeeq release];
	[btnClosePareq release];
	[btnAbseq release];
	[btnTaneq release];
	[btnAtaneq release];
	[btnTanheq release];
	[btnRtodeq release];
	[btnPieq release];
	[btnEoverXeq release];
	[btnLogeq release];
	[btnLneq release];
	[btn1overXeq release];
	[btnDoublePareq release];
	[btnLefteq release];
	[btnSineq release];
	[btnLefteq release];
	[btnRighteq release];
	[btnDegeq release];
	[btnRadeq release];
	
	
	// Release orientation views
	[mainPortraitView release];
	[mainLandscapeView release];
	[mainEquationView release];
	[lblTip release];
	[soundButton release];
	[lblDisplay release];
	[lblNumber release];
	[lblTax release];
	[webView release];
	
	[lblTip2 release];
	[soundButton2 release];
	[lblDisplay2 release];
	[lblNumber2 release];
	[lblTax2 release];
	[webView2 release];
	[eqButton release];	
	[eqExit release];	
    
	[settingsButton release];
	[settingsView release];
	[helpButton release];
	[helpView release];
	[aboutButton release];
	[aboutView release];
	[mortgageButton release];
	[mortgageView release];
	[loanButton release];
	[loanView release];
	[helpLandButton release];
	[helpLandView release];


	
	[pickerViewController release];
	[colorPickerViewController release];
	
	
	[purchasePrice release];
	[downPayment release];
	[mortgageTerm release];
	[interestRate release];
	[propertyTax release];
	[propertyInsurance release];
	[loanAmount release];
	[loanTerm release];
	[interestRateLoan release];
	[monthlyUntil release];
	[monthlyAfter release];
	[payments release];
	[payDate release];
	[monthlyPrinciple release];
	[payDateLoan release];
	[paymentsLoan release];
	[processing release];
	[btnDeg release];
	[super dealloc];
}

- (void) insertText: (NSString*) text
{
	[txtViewEQ  becomeFirstResponder];
	//txtDisplayEQ.alpha=0;
	
	// Get a refererence to the system pasteboard because that's
	// the only one @selector(paste:) will use.
	UIPasteboard* generalPasteboard = [UIPasteboard generalPasteboard];
	
	// Save a copy of the system pasteboard's items
	// so we can restore them later.
	NSArray* items = [generalPasteboard.items copy];
	
	// Set the contents of the system pasteboard
	// to the text we wish to insert.
	generalPasteboard.string = text;
	
	// Tell this responder to paste the contents of the
	// system pasteboard at the current cursor location.
	[txtViewEQ paste: self];
	
	// Restore the system pasteboard to its original items.
	generalPasteboard.items = items;
	
	// Free the items array we copied earlier.
	[items release];
}

- (void)doDelBack:(UITextView *) objText {
	NSRange r = [objText selectedRange];
	if (r.length > 0) {
		// the user has highlighted some text, fall through to delete it
	} else {
		// there's just an insertion point
		if (r.location == 0) {
			// cursor is at the beginning, forget about it.
			return;
		} else {
			r.location -= 1;
			r.length = 1;
		}
	}
	objText.text = [objText.text stringByReplacingCharactersInRange:r withString:@""];
	r.length = 0;
	objText.selectedRange = r;
}

- (void)doDelete:(UITextView *) objText {
	NSRange r = [objText selectedRange];
	if (r.length > 0) {
		// the user has highlighted some text, fall through to delete it
	} else {
		// there's just an insertion point
		if (r.location == [objText.text length]) {
			// cursor is at the end, forget about it.
			return;
		} else {
			//r.location += 1;
			r.length = 1;
		}
	}
	objText.text = [objText.text stringByReplacingCharactersInRange:r withString:@""];
	r.length = 0;
	objText.selectedRange = r;
}


- (void)doSignEQ:(UITextView *) objText {
	NSRange r = [objText selectedRange];
	
	if (r.length > 0) {
		// the user has highlighted some text, fall through to delete it
	} else {
		// there's just an insertion point
		if (r.location == 0) {
			// cursor is at the beginning, forget about it.
			[self insertText:@"-"];
			return;
		} else {
			r.location -= 1;
			r.length = 1;
		}
	}
	
	NSString *mySelection=[[NSString alloc] init];
	mySelection=[objText.text substringWithRange:NSMakeRange(r.location, r.length)];
	if ([mySelection compare:@"-"] == NSOrderedSame)  {
		objText.text = [objText.text stringByReplacingCharactersInRange:r withString:@""];
		r.length = 0;
		objText.selectedRange = r;
	}else {
		[self insertText:@"-"];
		r.length = 0;
	}
}




- (void)doChangeSign:(UITextView *) objText {
	NSNumberFormatter *nf = [[NSNumberFormatter alloc] init];
	[nf setNumberStyle:NSNumberFormatterDecimalStyle];
	
	//NSNumber *charValue = [nf numberFromString:objText.text];
	
	NSRange r = [objText selectedRange];
	if (r.length > 0) {
		// the user has highlighted some text, fall through to delete it
	} else {
		// there's just an insertion point
		if (r.location == [objText.text length]) {
			// cursor is at the end, forget about it.
			return;
		} else {
			//r.location += 1;
			r.length = 1;
		}
	}
	objText.text = [objText.text stringByReplacingCharactersInRange:r withString:@""];
	r.length = 0;
	objText.selectedRange = r;
}


-(void) setButtonImage:(NSString *) strTheme {
	NSString *btn = @"btn";
	if (strTheme == @"Gray") {
		strTheme=btn;
	} else {
		strTheme = [btn stringByAppendingString:strTheme];
	}
	
	UIImage *img = [UIImage imageNamed:[strTheme stringByAppendingString:@"Equation.png"]];
	[eqButton setImage:img forState:UIControlStateNormal];
	
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"Exit.png"]];
	[eqExit setImage:img forState:UIControlStateNormal];
	
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"0.png"]];
	[btn0 setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"1.png"]];
	[btn1 setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"2.png"]];
	[btn2 setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"3.png"]];
	[btn3 setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"4.png"]];
	[btn4 setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"5.png"]];
	[btn5 setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"6.png"]];
	[btn6 setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"7.png"]];
	[btn7 setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"8.png"]];
	[btn8 setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"9.png"]];
	[btn9 setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"Add.png"]];
	[btnAdd setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"Subtract.png"]];
	[btnSubtract setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"Multiply.png"]];
	[btnMultiply setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"Divide.png"]];
	[btnDivide setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"C.png"]];
	[btnC setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"MC.png"]];
	[btnMC setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"MR.png"]];
	[btnMR setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"MMinus.png"]];
	[btnMMinus setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"MPlus.png"]];
	[btnMPlus setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"Percent.png"]];
	[btnPercent setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"Square.png"]];
	[btnSquare setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"Equals.png"]];
	[btnEquals setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"Back.png"]];
	[btnBack setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"Negative.png"]];
	[btnNegative setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"Power.png"]];
	[btnPower setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"Power2.png"]];
	[btnPower2 setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"Power3.png"]];
	[btnPower3 setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"Nosound.png"]];
	[btnNoSound setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"Settax.png"]];
	[btnSettax setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"Settip.png"]];
	[btnSettip setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"TipPlus.png"]];
	[btnTipPlus setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"TaxPlus.png"]];
	[btnTaxPlus setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"Sound.png"]];
	[btnSound setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"Decimal.png"]];
	[btnDecimal setImage:img forState:UIControlStateNormal];
	
	
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"0.png"]];
	[btn0lnd setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"1.png"]];
	[btn1lnd setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"2.png"]];
	[btn2lnd setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"3.png"]];
	[btn3lnd setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"4.png"]];
	[btn4lnd setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"5.png"]];
	[btn5lnd setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"6.png"]];
	[btn6lnd setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"7.png"]];
	[btn7lnd setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"8.png"]];
	[btn8lnd setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"9.png"]];
	[btn9lnd setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"Add.png"]];
	[btnAddlnd setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"Subtract.png"]];
	[btnSubtractlnd setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"Multiply.png"]];
	[btnMultiplylnd setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"Divide.png"]];
	[btnDividelnd setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"C.png"]];
	[btnClnd setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"MC.png"]];
	[btnMClnd setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"MR.png"]];
	[btnMRlnd setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"MMinus.png"]];
	[btnMMinuslnd setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"MPlus.png"]];
	[btnMPluslnd setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"Percent.png"]];
	[btnPercentlnd setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"Square.png"]];
	[btnSquarelnd setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"Equals.png"]];
	[btnEqualslnd setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"Back.png"]];
	[btnBacklnd setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"Negative.png"]];
	[btnNegativelnd setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"Power.png"]];
	[btnPowerlnd setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"Power2.png"]];
	[btnPower2lnd setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"Power3.png"]];
	[btnPower3lnd setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"Nosound.png"]];
	[btnNoSoundlnd setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"Settax.png"]];
	[btnSettaxlnd setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"Settip.png"]];
	[btnSettiplnd setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"TipPlus.png"]];
	[btnTipPluslnd setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"TaxPlus.png"]];
	[btnTaxPluslnd setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"TaxMinus.png"]];
	[btnTaxMinuslnd setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"Sound.png"]];
	[btnSoundlnd setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"Decimal.png"]];
	[btnDecimallnd setImage:img forState:UIControlStateNormal];
	
	
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"0.png"]];
	[btn0eq setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"1.png"]];
	[btn1eq setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"2.png"]];
	[btn2eq setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"3.png"]];
	[btn3eq setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"4.png"]];
	[btn4eq setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"5.png"]];
	[btn5eq setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"6.png"]];
	[btn6eq setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"7.png"]];
	[btn7eq setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"8.png"]];
	[btn8eq setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"9.png"]];
	[btn9eq setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"Add.png"]];
	[btnAddeq setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"Subtract.png"]];
	[btnSubtracteq setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"Multiply.png"]];
	[btnMultiplyeq setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"Divide.png"]];
	[btnDivideeq setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"C.png"]];
	[btnCeq setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"MC.png"]];
	[btnMCeq setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"MR.png"]];
	[btnMReq setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"MMinus.png"]];
	[btnMMinuseq setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"MPlus.png"]];
	[btnMPluseq setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"Percent.png"]];
	[btnPercenteq setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"Square.png"]];
	[btnSquareeq setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"Equals.png"]];
	[btnEqualseq setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"Back.png"]];
	[btnBackeq setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"Negative.png"]];
	[btnNegativeeq setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"Power.png"]];
	[btnPowereq setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"Power2.png"]];
	[btnPower2eq setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"Power3.png"]];
	[btnPower3eq setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"Nosound.png"]];
	[btnNoSoundeq setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"Settax.png"]];
	[btnSettaxeq setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"Settip.png"]];
	[btnSettipeq setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"TipPlus.png"]];
	[btnTipPluseq setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"TaxPlus.png"]];
	[btnTaxPluseq setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"Sound.png"]];
	[btnSoundeq setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"Decimal.png"]];
	[btnDecimaleq setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"Sinh.png"]];
	[btnSinheq setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"Asin.png"]];
	[btnAsineq setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"Sin.png"]];
	[btnSineq setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"Round.png"]];
	[btnRoundeq setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"Undo.png"]];
	[btnUndoeq setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"Del.png"]];
	[btnDeleq setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"OpenPar.png"]];
	[btnOpenPareq setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"Trun.png"]];
	[btnTruneq setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"Cos.png"]];
	[btnCoseq setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"Acos.png"]];
	[btnAcoseq setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"Cosh.png"]];
	[btnCosheq setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"Dtor.png"]];
	[btnDtoreq setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"Rtod.png"]];
	[btnRtodeq setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"Tanh.png"]];
	[btnTanheq setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"Atan.png"]];
	[btnAtaneq setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"Tan.png"]];
	[btnTaneq setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"Abs.png"]];
	[btnAbseq setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"ClosePar.png"]];
	[btnClosePareq setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"Home.png"]];
	[btnHomeeq setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"Left.png"]];
	[btnLefteq setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"DoublePar.png"]];
	[btnDoublePareq setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"1overX.png"]];
	[btn1overXeq setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"Ln.png"]];
	[btnLneq setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"Log.png"]];
	[btnLogeq setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"EoverX.png"]];
	[btnEoverXeq setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"Pi.png"]];
	[btnPieq setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"Right.png"]];
	[btnRighteq setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"End.png"]];
	[btnEndeq setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"Rad.png"]];
	[btnRadeq setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"Deg.png"]];
	[btnDegeq setImage:img forState:UIControlStateNormal];

	ColorPickerView *test=[[ColorPickerView alloc] init];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"0.png"]];
	[test.btnTemp1 setImage:img forState:UIControlStateNormal];
	/*img = [UIImage imageNamed:[strTheme stringByAppendingString:@"1.png"]];
	[ColorPickerView.btnTemp2 setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"2.png"]];
	[ColorPickerView.btnTemp3 setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"3.png"]];
	[ColorPickerView.btnTemp4 setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"4.png"]];
	[ColorPickerView.btnTemp5 setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"5.png"]];
	[ColorPickerView.btnTemp6 setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"6.png"]];*/	
	
	
}


@end
