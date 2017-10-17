//
//  ColorPickerViewController.m
//  ColorPicker
//
//  Created by Gilly Dekel on 23/3/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import "ColorPickerViewController.h"
#import "ColorPickerView.h"
#import "iCalulatorProImprovedViewController.h"
#import <QuartzCore/QuartzCore.h>

@implementation ColorPickerViewController


NSString *keyForHue = @"hue";
NSString *keyForSat = @"sat";
NSString *keyForBright = @"bright";




// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
	NSUserDefaults *saveColors = [NSUserDefaults standardUserDefaults];
	ColorPickerView *theView = (ColorPickerView*) [self view];
	
	
	theView.btnBackground.layer.cornerRadius = 10;
	theView.btnBackground.layer.borderColor=[UIColor blackColor].CGColor;
	theView.btnBackground.layer.borderWidth=3.0f;
	
	[self setSettingsButtonImage:[saveColors valueForKey:varTheme] withPicker:theView];
	
	if ([saveColors floatForKey:keyForHue])
		[theView setCurrentHue:[saveColors floatForKey:keyForHue]];
	else
		[theView setCurrentHue:0.5];
	
	if ([saveColors floatForKey:keyForSat])
		[theView setCurrentHue:[saveColors floatForKey:keyForSat]];
	else
		[theView setCurrentSaturation:0.5];
	
	if ([saveColors floatForKey:keyForBright])
		[theView setCurrentHue:[saveColors floatForKey:keyForBright]];
	else
		[theView setCurrentBrightness:0.5];

}

- (void) viewWillDisappear :(BOOL)animated { 

	NSUserDefaults *saveColors = [NSUserDefaults standardUserDefaults];
	
	ColorPickerView *theView = (ColorPickerView*) [self view];
	
	[saveColors setFloat:[theView currentHue] forKey:keyForHue];
	[saveColors setFloat:[theView currentSaturation] forKey:keyForSat];
	[saveColors setFloat:[theView currentBrightness] forKey:keyForBright];
}

/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (UIColor *) getSelectedColor {
	return [(ColorPickerView *) [self view] getColorShown];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning]; // Releases the view if it doesn't have a superview
    // Release anything that's not essential, such as cached data
}


- (void)dealloc {
    [super dealloc];
}

- (void)setSettingsButtonImage:(NSString *) strTheme withPicker:(ColorPickerView *) objView {
    if (strTheme == @"")
        strTheme = @"Gray";
    
    
	NSString *btn = @"btn";
	if (strTheme == @"Gray") {
		strTheme=btn;
	} else {
		//strTheme = [btn stringByAppendingString:strTheme];
		strTheme = [btn stringByAppendingString:@"Alum"];
	}
	

	UIImage *img = [UIImage imageNamed:[strTheme stringByAppendingString:@"0.png"]];
	[objView.btnTemp1 setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"1.png"]];
	[objView.btnTemp2 setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"2.png"]];
	[objView.btnTemp3 setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"3.png"]];
	[objView.btnTemp4 setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"4.png"]];
	[objView.btnTemp5 setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"5.png"]];
	[objView.btnTemp6 setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"6.png"]];	
	
	
}


@end
