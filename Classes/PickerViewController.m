//
//  PickerViewController.m
//  PickerView
//


#import "PickerViewController.h"
#import "iCalulatorProImprovedViewController.h"
#import "ColorPickerViewController.h"
#import "ColorPickerView.h"
#import "iCalulatorProImprovedAppDelegate.h"
@implementation PickerViewController

@synthesize  pickerView;
@synthesize  btnTemp1;
@synthesize  btnTemp2;
@synthesize  btnTemp3;
@synthesize  btnTemp4;
@synthesize  btnTemp5;
@synthesize  btnTemp6;

// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
	[super viewDidLoad];
	arrayThemes = [[NSMutableArray alloc] init];

	[arrayThemes addObject:@"Gray"];
	[arrayThemes addObject:@"Aluminum"];
	[arrayThemes addObject:@"Circus"];
	[arrayThemes addObject:@"Blue Metal"];
	[arrayThemes addObject:@"Bamboo"];
	[arrayThemes addObject:@"Sky"];
	[arrayThemes addObject:@"Marble"];
	[arrayThemes addObject:@"Expedition"];
	[arrayThemes addObject:@"Wood"];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning]; // Releases the view if it doesn't have a superview
    // Release anything that's not essential, such as cached data
}


- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
	return 1;
}
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
	return [arrayThemes count];
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
	return [arrayThemes objectAtIndex:row];
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
	//NSLog(@"Selected theme: %@. Index of selected theme: %i", [arrayThemes objectAtIndex:row], row);
	
	NSString *theme=[arrayThemes objectAtIndex:row];
	
	if (theme==@"Gray") {theme=@"Gray";}
	if (theme==@"Aluminum") {theme=@"Alum";}
	if (theme==@"Circus") {theme=@"Cir";}
	if (theme==@"Blue Metal") {theme=@"Blue";}
	if (theme==@"Bamboo") {theme=@"Bamboo";}
	if (theme==@"Sky") {theme=@"Sky";}
	if (theme==@"Marble") {theme=@"Marb";}
	if (theme==@"Expedition") {theme=@"Exp";}
	if (theme==@"Wood") {theme=@"Wood";}

	iCalulatorProImprovedAppDelegate *mainDelegate = (iCalulatorProImprovedAppDelegate *)[[UIApplication sharedApplication] delegate];
	mainDelegate.gTheme = theme;
	
	NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
	[userDefaults setObject:theme forKey:varTheme];

	[self setSettingsButtonImage:theme];


	//UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Selected" message:theme delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
	//[alert show];
	//[alert release];
}

- (void)dealloc {
	[arrayThemes release];
	[pickerView release];
    [super dealloc];
}

-(void) setSettingsButtonImage:(NSString *) strTheme  {
	NSString *btn = @"btn";
	if (strTheme == @"Gray") {
		strTheme=btn;
	} else {
		strTheme = [btn stringByAppendingString:strTheme];
	}
	
	
	UIImage *img = [UIImage imageNamed:[strTheme stringByAppendingString:@"0.png"]];
	[btnTemp1 setImage:img forState:UIControlStateNormal];
	
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"1.png"]];
	[btnTemp2 setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"2.png"]];
	[btnTemp3 setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"3.png"]];
	[btnTemp4 setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"4.png"]];
	[btnTemp5 setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"5.png"]];
	[btnTemp6 setImage:img forState:UIControlStateNormal];
	img = [UIImage imageNamed:[strTheme stringByAppendingString:@"6.png"]];	
	
	
}
@end
