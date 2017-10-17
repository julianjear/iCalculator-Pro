//
//  PickerViewController.h
//  PickerView
//


#import <UIKit/UIKit.h>
#import "iCalulatorProImprovedAppDelegate.h"
#import <QuartzCore/QuartzCore.h>

@interface PickerViewController : UIViewController <UIPickerViewDataSource, UIPickerViewDelegate> {
	IBOutlet UIPickerView *pickerView;
	NSMutableArray *arrayThemes;
	
	
	IBOutlet UIButton *btnTemp1;
	IBOutlet UIButton *btnTemp2;
	IBOutlet UIButton *btnTemp3;
	IBOutlet UIButton *btnTemp4;
	IBOutlet UIButton *btnTemp5;
	IBOutlet UIButton *btnTemp6;
}

@property (nonatomic, retain) IBOutlet UIPickerView *pickerView;
@property (nonatomic,retain) UIButton *btnTemp1;
@property (nonatomic,retain) UIButton *btnTemp2;
@property (nonatomic,retain) UIButton *btnTemp3;
@property (nonatomic,retain) UIButton *btnTemp4;
@property (nonatomic,retain) UIButton *btnTemp5;
@property (nonatomic,retain) UIButton *btnTemp6;

-(void) setSettingsButtonImage:(NSString *) strTheme; 


@end
