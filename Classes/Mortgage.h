//
//  Mortgage.h
//  iCalulatorProImproved
//
//  Created by Juan Montoya on 3/31/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface Mortgage : NSObject {
	NSString*		_expr;			// retained expression
	double			principal;
	double			downPaymentPercent;
	double			apr;
	double			mpr;
	double			termYears;
	double			termMonths;
	double			payment;
	double			propTaxYear;
	double			propInsuranceYear;
	double			totalYouPay;
	double			totalInterestYouPay;
}



-(NSString*)calcQuota:(double)VarPrincipal 
withVarPercentDownPayment:(double)VarPercentDownPayment 
		   withVarAPR:(double)VarAPR 
	 withVarTermYears: (double)VarTermYears 
	 withVarPropTaxes: (double)VarPropTaxes 
 withVarPropInsurance:(double)VarPropInsurance; 


@end
