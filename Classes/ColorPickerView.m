//
//  ColorPickerView.m
//  ColorPicker
//
//  Created by Gilly Dekel on 23/3/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import "ColorPickerView.h"
#import "GradientView.h"
#import "Constants.h"
#import "iCalulatorProImprovedViewController.h"
#import "ColorPickerViewController.h"
#import "iCalulatorProImprovedAppDelegate.h"


@implementation ColorPickerView

@synthesize backgroundImage;
@synthesize closeButtonImage;
@synthesize nextButtonImage;

@synthesize currentHue;
@synthesize currentSaturation;
@synthesize currentBrightness;

@synthesize  btnBackground;
@synthesize  btnTemp1;
@synthesize  btnTemp2;
@synthesize  btnTemp3;
@synthesize  btnTemp4;
@synthesize  btnTemp5;
@synthesize  btnTemp6;

- (id)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        // Initialization code
		

    }
    return self;
}

- (id)initWithCoder:(NSCoder*)coder  {
	if (self = [super initWithCoder:coder]) {
		
		gradientView = [[GradientView alloc] initWithFrame:kBrightnessGradientPlacent];
		[gradientView setTheColor:[UIColor yellowColor].CGColor];
		[self addSubview:gradientView];
		[self sendSubviewToBack:gradientView];
		[self setMultipleTouchEnabled:YES];
		colorMatrixFrame = kHueSatFrame;
		UIImageView *hueSatImage = [[UIImageView alloc] initWithFrame:colorMatrixFrame];
		[hueSatImage setImage:[UIImage imageNamed:kHueSatImage]];
		[self addSubview:hueSatImage];
		[self sendSubviewToBack:hueSatImage];
		[hueSatImage release];
		currentBrightness = kInitialBrightness;
		
		currentColor = [[UIColor alloc]init];
		
	}
	return self;
	
}

- (NSString *) hexStringFromColor  : (CGColorRef) theColor
{  
   
    const CGFloat *c = CGColorGetComponents(theColor);  
	CGFloat r, g, b;  
	r = c[0];  
	g = c[1];  
	b = c[2];  
       
     // Fix range if needed  
	if (r < 0.0f) r = 0.0f;  
	if (g < 0.0f) g = 0.0f;  
	if (b < 0.0f) b = 0.0f;  
       
	if (r > 1.0f) r = 1.0f;  
	if (g > 1.0f) g = 1.0f;  
	if (b > 1.0f) b = 1.0f;  
       
     // Convert to hex string between 0x00 and 0xFF  
	return [NSString stringWithFormat:@"#%02X%02X%02X",  
			(int)(r * 255), (int)(g * 255), (int)(b * 255)];  
}  


- (void) getStringForHSL : (float) hue : (float) sat : (float) bright {
		
	[Hcoords setText:[NSString stringWithFormat:@"%d",(int)(hue*255)]];
	[Scoords setText:[NSString stringWithFormat:@"%d",(int)(sat*255)]];
	[Lcoords setText:[NSString stringWithFormat:@"%d",(int)(bright*255)]];

}


- (void) getStringForRGB :(CGColorRef) theColor {
	const CGFloat *c = CGColorGetComponents(theColor);  
	CGFloat r, g, b;  
	r = c[0];  
	g = c[1];  
	b = c[2];  
	
	[Rcoords setText:[NSString stringWithFormat:@"%d",(int)(r*255)]];
	[Gcoords setText:[NSString stringWithFormat:@"%d",(int)(g*255)]];
	[Bcoords setText:[NSString stringWithFormat:@"%d",(int)(b*255)]];
	
	
}


- (void) updateHueSatWithMovement : (CGPoint) position {

	currentHue = (position.x-kXAxisOffset)/kMatrixWidth;
	currentSaturation = 1.0 -  (position.y-kYAxisOffset)/kMatrixHeight;
	
	//printf("hue Of the touch is : %f\n",currentHue);
//	printf("sat Of the touch is : %f\n",currentSaturation);
	
	UIColor *forGradient = [UIColor colorWithHue:currentHue 
									saturation:currentSaturation 
									brightness: kInitialBrightness 
									alpha:1.0];
	
	[gradientView setTheColor:forGradient.CGColor];
	[gradientView setupGradient];
	[gradientView setNeedsDisplay];

	currentColor  = [UIColor colorWithHue:currentHue 
									   saturation:currentSaturation 
									   brightness:currentBrightness
									   alpha:1.0];
	
	[showColor setBackgroundColor:currentColor];
	[btnBackground setBackgroundColor:currentColor];

	
	[colorInHex setText:[self hexStringFromColor:currentColor.CGColor]]; 
	[self getStringForRGB:currentColor.CGColor];
	[self getStringForHSL:currentHue :currentSaturation :currentBrightness];
	
	iCalulatorProImprovedAppDelegate *mainDelegate = (iCalulatorProImprovedAppDelegate *)[[UIApplication sharedApplication] delegate];
	mainDelegate.bgColor= currentColor;

}


- (void) updateBrightnessWithMovement : (CGPoint) position {
	
	currentBrightness = 1.0-(position.x/gradientView.frame.size.width) + kBrightnessEpsilon;
	
	//printf("Brightness Of the touch is : %f\n",currentBrightness);
	UIColor *forColorView  = [UIColor colorWithHue:currentHue 
										saturation:currentSaturation 
										brightness:currentBrightness
											 alpha:1.0];
	
	[showColor setBackgroundColor:forColorView];
	[btnBackground setBackgroundColor:forColorView];
	
	[colorInHex setText:[self hexStringFromColor:forColorView.CGColor]]; 
	[self getStringForRGB:forColorView.CGColor];
	[self getStringForHSL:currentHue :currentSaturation :currentBrightness];
	
	iCalulatorProImprovedAppDelegate *mainDelegate = (iCalulatorProImprovedAppDelegate *)[[UIApplication sharedApplication] delegate];
	mainDelegate.bgColor= forColorView;
}



//Touch parts : 


// Scales down the view and moves it to the new position. 
- (void)animateView:(UIImageView *)theView toPosition:(CGPoint) thePosition
{
	[UIView beginAnimations:nil context:NULL];
	[UIView setAnimationDuration:kAnimationDuration];
	// Set the center to the final postion
	theView.center = thePosition;
	// Set the transform back to the identity, thus undoing the previous scaling effect.
	theView.transform = CGAffineTransformIdentity;
	[UIView commitAnimations];	
}

-(void) dispatchTouchEvent:(CGPoint)position
{
	if (CGRectContainsPoint(colorMatrixFrame,position))
	{
		//NSLog(@"Color!");
		//printf("X Of the touch in grad view is : %f\n",position.x);
//		printf("Y Of the touch in grad view is : %f\n",position.y);
		[self animateView:crossHairs toPosition: position];
		[self updateHueSatWithMovement:position];
		
	}
	else if (CGRectContainsPoint(gradientView.frame, position))
	{
		//NSLog(@"Bright!");
		CGPoint newPos = CGPointMake(position.x,kBrightBarYCenter);
		[self animateView:brightnessBar toPosition: newPos];
		[self updateBrightnessWithMovement:position];
	}
	else
	{
//		printf("X Of the touch in grad view is : %f\n",position.x);
//		printf("Y Of the touch in grad view is : %f\n",position.y);
	}
	
}


// Handles the start of a touch
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
	
	for (UITouch *touch in touches) {
		[self dispatchTouchEvent:[touch locationInView:self]];
	//	printf("X IS %f\n",[touch locationInView:self].x);
//		printf("Y IS %f\n",[touch locationInView:self].y);
		}	
}

// Handles the continuation of a touch.
- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{  

	for (UITouch *touch in touches){
		[self dispatchTouchEvent:[touch locationInView:self]];
	}
	
}



- (void)drawRect:(CGRect)rect {
    
	CGFloat x = currentHue * kMatrixWidth;
	//CGFloat y = currentSaturation * kMatrixHeight;
	
	//crossHairs.center = CGPointMake(x,y);
	
	x = currentBrightness * gradientView.frame.size.width;
	
	brightnessBar.center = CGPointMake(x,kBrightBarYCenter);
	
	[gradientView setupGradient];
	[gradientView setNeedsDisplay];
	[colorInHex setFont:[UIFont fontWithName:@"helvetica" size:16]];
	[self sendSubviewToBack:showColor];

}

- (UIColor *) getColorShown {
//	NSLog(@"Are we here ? ");
	return [UIColor colorWithHue:currentHue saturation:currentSaturation brightness:currentBrightness alpha:1.0];
}

- (void)dealloc {
    [super dealloc];
	
}


@end
