//
//  Quote.h
//  iCalulatorProImproved
//
//  Created by Juan Montoya on 4/8/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface Quote : NSObject {
	NSNumber	*period;
	NSNumber	*balance;
	NSNumber	*amortInterest;
	NSNumber	*amortPrincipal;
	NSNumber	*prepay;
	NSNumber	*newBalance;
}

@property (nonatomic, retain) NSNumber *period;
@property (nonatomic, retain) NSNumber *balance;
@property (nonatomic, retain) NSNumber *amortInterest;
@property (nonatomic, retain) NSNumber *amortPrincipal;
@property (nonatomic, retain) NSNumber *prepay;
@property (nonatomic, retain) NSNumber *newBalance;

-(id)initWithName:(NSNumber *)per balance:(NSNumber *)bal amortInterest:(NSNumber *)ai amortPrincipal:(NSNumber *)ap prepay:(NSNumber *)pre newBalance:(NSNumber *)nb;

@end
