//
//  Quote.m
//  iCalulatorProImproved
//
//  Created by Juan Montoya on 4/8/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "Quote.h"

@implementation Quote

@synthesize	period;
@synthesize	balance;
@synthesize	amortInterest;
@synthesize	amortPrincipal;
@synthesize	prepay;
@synthesize	newBalance;

- (id)initWithName:(NSNumber *)per balance:(NSNumber *)bal amortInterest:(NSNumber *)ai amortPrincipal:(NSNumber *)ap prepay:(NSNumber *)pre newBalance:(NSNumber *)nb{

	self.period=per;
	self.balance=bal;
	self.amortInterest=ai;
	self.amortPrincipal=ap;
	self.prepay=pre;
	self.newBalance=nb;
    
	return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code.
}
*/

- (void)dealloc {
    [super dealloc];
}


@end
