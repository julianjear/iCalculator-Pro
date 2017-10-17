//
//  iCalulatorProImprovedAppDelegate.h
//  iCalulatorProImproved
//
//  Created by julian Emilio alvarez on 3/26/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class iCalulatorProImprovedViewController;

@interface iCalulatorProImprovedAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    iCalulatorProImprovedViewController *viewController;
	
	NSString *gTheme;
	UIColor *bgColor;
	NSString *eqMode;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet iCalulatorProImprovedViewController *viewController;
@property (nonatomic, retain) NSString *gTheme;
@property (nonatomic, retain) UIColor *bgColor;
@property (nonatomic, retain) NSString *eqMode;

@end

