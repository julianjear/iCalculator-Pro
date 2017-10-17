    //
//  Mortgage.m
//  iCalulatorProImproved
//
//  Created by Juan Montoya on 3/31/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "Mortgage.h"
#import "Quote.h"
#import "iCalulatorProImprovedViewController.h"

@implementation Mortgage

-(NSString*)calcQuota:(double)VarPrincipal 
withVarPercentDownPayment:(double)VarPercentDownPayment 
withVarAPR:(double)VarAPR 
withVarTermYears: (double)VarTermYears 
withVarPropTaxes: (double)VarPropTaxes 
withVarPropInsurance:(double)VarPropInsurance
{
	
	principal=(1-VarPercentDownPayment)*VarPrincipal;

	mpr=VarAPR/(12*100);
	
	termMonths=VarTermYears*12;
	payment=principal*(mpr/(1-pow((1+mpr),-termMonths)));
	
	//NSMutableArray *quotes;
	

	double vbal;
	double vai;
	double vap;
	double vnb;
	double vprepay=0;

	NSNumberFormatter *numForm=[[[NSNumberFormatter alloc]init]autorelease];
	[numForm setNumberStyle:NSNumberFormatterCurrencyStyle];
	


	
	
	
	
	NSString *A=@"<DIV style=""scroll""><TABLE width=""100%"">";	
	A=[NSString stringWithFormat:@"%@ %@",A,@"<TR>"];
	A=[NSString stringWithFormat:@"%@ %@",A,@"<TH style=""font-size:20px"">Period</TH>"];
	A=[NSString stringWithFormat:@"%@ %@",A,@"<TH style=""font-size:20px"">Balance</TH>"];
	A=[NSString stringWithFormat:@"%@ %@",A,@"<TH style=""font-size:20px"">Interest(Month)</TH>"];
	A=[NSString stringWithFormat:@"%@ %@",A,@"<TH style=""font-size:20px"">Principal(Month)</TH>"];
	A=[NSString stringWithFormat:@"%@ %@",A,@"<TH style=""font-size:20px"">New Balance</TH>"];
	A=[NSString stringWithFormat:@"%@ %@",A,@"</TR>"];
	
	for (int i=1; i <= termMonths; i++){
		//quotes=[[NSMutableArray alloc]init];
		vbal=principal;
		vai=principal*mpr;
		vap=payment-principal*mpr;
		
		vnb=principal-vap-vprepay;
		
		totalYouPay=totalYouPay+vai+vap;
		totalInterestYouPay=totalInterestYouPay+vai;
		
		/*Quote *quote=[[Quote alloc] initWithName:[NSNumber numberWithInt:i] balance:[NSNumber numberWithFloat:vbal] 
					amortInterest:[NSNumber numberWithFloat:vai] amortPrincipal:[NSNumber numberWithFloat:vap] 
					prepay:[NSNumber numberWithFloat:vprepay] newBalance:[NSNumber numberWithFloat:vnb]];
		[quotes addObject:quote];*/
		
		
		
		A=[NSString stringWithFormat:@"%@ %@",A,@"<TR>"];
		A=[NSString stringWithFormat:@"%@ %@ %@ %@",A,@"<TD style=""font-size:20px"">", [NSString stringWithFormat:@"%d",i] ,@"</TD>"];
		A=[NSString stringWithFormat:@"%@ %@ %@ %@",A,@"<TD style=""font-size:20px"">", [numForm stringFromNumber:[NSNumber numberWithDouble:vbal]] ,@"</TD>"];
		A=[NSString stringWithFormat:@"%@ %@ %@ %@",A,@"<TD style=""font-size:20px"">", [numForm stringFromNumber:[NSNumber numberWithDouble:vai]] ,@"</TD>"];
		A=[NSString stringWithFormat:@"%@ %@ %@ %@",A,@"<TD style=""font-size:20px"">", [numForm stringFromNumber:[NSNumber numberWithDouble:vap]] ,@"</TD>"];
		A=[NSString stringWithFormat:@"%@ %@ %@ %@",A,@"<TD style=""font-size:20px"">", [numForm stringFromNumber:[NSNumber numberWithDouble:vnb]] ,@"</TD>"];
		A=[NSString stringWithFormat:@"%@ %@",A,@"</TR>"];

		
		principal=vnb;
	}

	A=[NSString stringWithFormat:@"%@ %@",A,@"</TABLE></DIV>"];
	
	NSString *B=@"<style type=""text/css"">DIV.scroll {height:450px; overflow:auto; overflow-y:auto; overflow-x:hidden;}  TH {background-color:gray} TABLE, TH , TD {font-family:sans-serif; text-align:center;border: 1px solid black;border-collapse:collapse;}</style><TABLE width=""100%"">";	
	B=[NSString stringWithFormat:@"%@ %@",B,@"<TR style=""font-family:sans-serif"" >"];	
	B=[NSString stringWithFormat:@"%@ %@",B,@"<TH style=""font-size:20px"">Monthly payment</TH>"];
	NSInteger Months=termMonths;
	B=[NSString stringWithFormat:@"%@ %@ %@ %@",B,@"<TH style=""font-size:20px"">Total of ", [NSString stringWithFormat:@"%d", Months] ,@" payments</TH>"];
	B=[NSString stringWithFormat:@"%@ %@",B,@"<TH style=""font-size:20px"">Total interest</TH>"];
	B=[NSString stringWithFormat:@"%@ %@",B,@"<TH style=""font-size:20px"">Payoff date</TH>"];
	B=[NSString stringWithFormat:@"%@ %@",B,@"</TR>"];
	B=[NSString stringWithFormat:@"%@ %@",B,@"<TR>"];	
	B=[NSString stringWithFormat:@"%@ %@ %@ %@",B,@"<TD style=""font-size:20px"">", [numForm stringFromNumber:[NSNumber numberWithDouble:payment]] ,@"</TD>"];
	B=[NSString stringWithFormat:@"%@ %@ %@ %@",B,@"<TD style=""font-size:20px"">", [numForm stringFromNumber:[NSNumber numberWithDouble:totalYouPay]] ,@"</TD>"];
	B=[NSString stringWithFormat:@"%@ %@ %@ %@",B,@"<TD style=""font-size:20px"">", [numForm stringFromNumber:[NSNumber numberWithDouble:totalInterestYouPay]] ,@"</TD>"];
	B=[NSString stringWithFormat:@"%@ %@ %@ %@",B,@"<TD style=""font-size:20px"">", [numForm stringFromNumber:[NSNumber numberWithDouble:totalYouPay]] ,@"</TD>"];
	B=[NSString stringWithFormat:@"%@ %@",B,@"</TR>"];
	B=[NSString stringWithFormat:@"%@ %@",B,@"</TABLE><BR/><BR/>"];	
	
	A=[NSString stringWithFormat:@"%@ %@",B,A];

	return A;
}


@end
