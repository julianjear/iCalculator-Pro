//
//  GradientView.h
//  ColorPicker
//


#import <UIKit/UIKit.h>


@interface GradientView : UIView {
	CGGradientRef gradient;
	CGColorRef theColor;
}

@property (readwrite) CGColorRef theColor;
- (void) setupGradient;
@end
