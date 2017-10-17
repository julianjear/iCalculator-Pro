//
//  iCalulatorProImprovedViewController.h
//  iCalulatorProImproved
//
//  Created by julian Emilio alvarez on 3/26/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioToolbox.h>
#define varTax @"tax"
#define varTip @"tip"
#define varTheme @"theme"
#define varThemeColor nil


#import "PickerViewController.h"
#import "ColorPickerViewController.h"
#import "iCalulatorProImprovedAppDelegate.h"

@class GCMathParser;
@class Mortgage;

@interface iCalulatorProImprovedViewController : UIViewController {
	PickerViewController *pickerViewController;
    ColorPickerViewController *colorPickerViewController;
	
	
	IBOutlet UIView *mainPortraitView;
	IBOutlet UIView *mainLandscapeView;
	IBOutlet UIView *mainEquationView;
	IBOutlet UIView *settingsView;
	IBOutlet UIView *helpView;
	IBOutlet UIView *aboutView;
	IBOutlet UIView *mortgageView;
	IBOutlet UIView *loanView;
	IBOutlet UIView *helpLandView;

	UIDeviceOrientation orientation;
	
	double firstNumber;
	int pressEqual;
	bool lastKeyIsNumber;
	NSString *operation;
	double memory;
	
	
	NSMutableArray *lastText;
	
	IBOutlet UIButton *soundButton;
	IBOutlet UILabel *lblTip;
	IBOutlet UILabel *lblDisplay;
	IBOutlet UILabel *lblNumber;
	IBOutlet UILabel *lblTax;
	IBOutlet UILabel *lblAngle;
	IBOutlet UIWebView *webView;
	
	IBOutlet UIButton *soundButton2;
	IBOutlet UILabel *lblTip2;
	IBOutlet UILabel *lblDisplay2;
	IBOutlet UILabel *lblNumber2;
	IBOutlet UILabel *lblTax2;
	IBOutlet UIWebView *webView2;
	
	UILabel *templblDisplay;
	UILabel *templblTip;
	UILabel *templblNumber;
	UILabel *templblTax;
	
	IBOutlet UIButton *eqButton;
	IBOutlet UIButton *eqExit;	
	
	IBOutlet UIButton *expEvaluateButton;
	//IBOutlet UITextField *expInputTextField;
	//IBOutlet UITextView *expResultTextField;
	IBOutlet id	retainParserCheckbox;
	
	IBOutlet UITextField *txtDisplayEQ;
	IBOutlet UITextView *txtViewEQ;
	
	GCMathParser *_parser;
	Mortgage *mortgage;
	
	IBOutlet UIButton *settingsButton;
	IBOutlet UIButton *helpButton;
	IBOutlet UIButton *aboutButton;
	IBOutlet UIButton *mortgageButton;
	IBOutlet UIButton *loanButton;
	IBOutlet UIButton *helpLandButton;

	
	IBOutlet UIButton *btn0;
	IBOutlet UIButton *btn1;
	IBOutlet UIButton *btn2;
	IBOutlet UIButton *btn3;
	IBOutlet UIButton *btn4;
	IBOutlet UIButton *btn5;
	IBOutlet UIButton *btn6;
	IBOutlet UIButton *btn7;
	IBOutlet UIButton *btn8;
	IBOutlet UIButton *btn9;
	IBOutlet UIButton *btnAdd;
	IBOutlet UIButton *btnSubtract;
	IBOutlet UIButton *btnMultiply;
	IBOutlet UIButton *btnDivide;
	IBOutlet UIButton *btnC;
	IBOutlet UIButton *btnMC;
	IBOutlet UIButton *btnMR;
	IBOutlet UIButton *btnMMinus;
	IBOutlet UIButton *btnMPlus;
	IBOutlet UIButton *btnPercent;
	IBOutlet UIButton *btnSquare;
	IBOutlet UIButton *btnEquals;
	IBOutlet UIButton *btnBack;
	IBOutlet UIButton *btnNegative;
	IBOutlet UIButton *btnPower;
	IBOutlet UIButton *btnPower2;
	IBOutlet UIButton *btnPower3;
	IBOutlet UIButton *btnNoSound;
	IBOutlet UIButton *btnSettax;
	IBOutlet UIButton *btnSettip;
	IBOutlet UIButton *btnTipPlus;
	IBOutlet UIButton *btnTaxPlus;
	IBOutlet UIButton *btnSound;
	IBOutlet UIButton *btnDecimal;
	
	
	IBOutlet UIButton *btn0lnd;
	IBOutlet UIButton *btn1lnd;
	IBOutlet UIButton *btn2lnd;
	IBOutlet UIButton *btn3lnd;
	IBOutlet UIButton *btn4lnd;
	IBOutlet UIButton *btn5lnd;
	IBOutlet UIButton *btn6lnd;
	IBOutlet UIButton *btn7lnd;
	IBOutlet UIButton *btn8lnd;
	IBOutlet UIButton *btn9lnd;
	IBOutlet UIButton *btnAddlnd;
	IBOutlet UIButton *btnSubtractlnd;
	IBOutlet UIButton *btnMultiplylnd;
	IBOutlet UIButton *btnDividelnd;
	IBOutlet UIButton *btnClnd;
	IBOutlet UIButton *btnMClnd;
	IBOutlet UIButton *btnMRlnd;
	IBOutlet UIButton *btnMMinuslnd;
	IBOutlet UIButton *btnMPluslnd;
	IBOutlet UIButton *btnPercentlnd;
	IBOutlet UIButton *btnSquarelnd;
	IBOutlet UIButton *btnEqualslnd;
	IBOutlet UIButton *btnBacklnd;
	IBOutlet UIButton *btnNegativelnd;
	IBOutlet UIButton *btnPowerlnd;
	IBOutlet UIButton *btnPower2lnd;
	IBOutlet UIButton *btnPower3lnd;
	IBOutlet UIButton *btnNoSoundlnd;
	IBOutlet UIButton *btnSettaxlnd;
	IBOutlet UIButton *btnSettiplnd;
	IBOutlet UIButton *btnTipPluslnd;
	IBOutlet UIButton *btnTaxPluslnd;
	IBOutlet UIButton *btnSoundlnd;
	IBOutlet UIButton *btnDecimallnd;
	IBOutlet UIButton *btnTaxMinuslnd;
	
	
	
	
	IBOutlet UIButton *btn0eq;
	IBOutlet UIButton *btn1eq;
	IBOutlet UIButton *btn2eq;
	IBOutlet UIButton *btn3eq;
	IBOutlet UIButton *btn4eq;
	IBOutlet UIButton *btn5eq;
	IBOutlet UIButton *btn6eq;
	IBOutlet UIButton *btn7eq;
	IBOutlet UIButton *btn8eq;
	IBOutlet UIButton *btn9eq;
	IBOutlet UIButton *btnAddeq;
	IBOutlet UIButton *btnSubtracteq;
	IBOutlet UIButton *btnMultiplyeq;
	IBOutlet UIButton *btnDivideeq;
	IBOutlet UIButton *btnCeq;
	IBOutlet UIButton *btnMCeq;
	IBOutlet UIButton *btnMReq;
	IBOutlet UIButton *btnMMinuseq;
	IBOutlet UIButton *btnMPluseq;
	IBOutlet UIButton *btnPercenteq;
	IBOutlet UIButton *btnSquareeq;
	IBOutlet UIButton *btnEqualseq;
	IBOutlet UIButton *btnBackeq;
	IBOutlet UIButton *btnNegativeeq;
	IBOutlet UIButton *btnPowereq;
	IBOutlet UIButton *btnPower2eq;
	IBOutlet UIButton *btnPower3eq;
	IBOutlet UIButton *btnNoSoundeq;
	IBOutlet UIButton *btnSettaxeq;
	IBOutlet UIButton *btnSettipeq;
	IBOutlet UIButton *btnTipPluseq;
	IBOutlet UIButton *btnTaxPluseq;
	IBOutlet UIButton *btnSoundeq;
	IBOutlet UIButton *btnDecimaleq;
	IBOutlet UIButton *btnSinheq;
	IBOutlet UIButton *btnAsineq;
	IBOutlet UIButton *btnSineq;
	IBOutlet UIButton *btnRoundeq;
	IBOutlet UIButton *btnUndoeq;
	IBOutlet UIButton *btnDtoreq;
	IBOutlet UIButton *btnCosheq;
	IBOutlet UIButton *btnAcoseq;
	IBOutlet UIButton *btnCoseq;
	IBOutlet UIButton *btnTruneq;
	IBOutlet UIButton *btnOpenPareq;
	IBOutlet UIButton *btnDeleq;
	IBOutlet UIButton *btnRtodeq;
	IBOutlet UIButton *btnTanheq;
	IBOutlet UIButton *btnAtaneq;
	IBOutlet UIButton *btnTaneq;
	IBOutlet UIButton *btnAbseq;
	IBOutlet UIButton *btnClosePareq;
	IBOutlet UIButton *btnHomeeq;
	IBOutlet UIButton *btnLefteq;
	IBOutlet UIButton *btnDoublePareq;
	IBOutlet UIButton *btn1overXeq;
	IBOutlet UIButton *btnLneq;
	IBOutlet UIButton *btnLogeq;
	IBOutlet UIButton *btnEoverXeq;
	IBOutlet UIButton *btnPieq;
	IBOutlet UIButton *btnRighteq;
	IBOutlet UIButton *btnEndeq;
	IBOutlet UIButton *btnSigneq;
	IBOutlet UIButton *btnDegeq;
	IBOutlet UIButton *btnRadeq;
	
	IBOutlet UIWebView *webQuotes;
	IBOutlet UIWebView *webLoanQuotes;
	IBOutlet UITextField *purchasePrice;
	IBOutlet UITextField *downPayment;
	IBOutlet UITextField *mortgageTerm;
	IBOutlet UITextField *interestRate;
	IBOutlet UITextField *propertyTax;
	IBOutlet UITextField *propertyInsurance;
	IBOutlet UITextField *loanAmount;
	IBOutlet UITextField *loanTerm;
	IBOutlet UITextField *interestRateLoan;

	IBOutlet UILabel *monthlyUntil;
	IBOutlet UILabel *monthlyAfter;
	IBOutlet UILabel *payments;
	IBOutlet UILabel *payDate;
	IBOutlet UILabel *monthlyPrinciple;
	IBOutlet UILabel *payDateLoan;
	IBOutlet UILabel *paymentsLoan;
	
	IBOutlet UIActivityIndicatorView *processing;
	IBOutlet UIButton *btnDeg;


}

@property (nonatomic, retain) UIView *mainPortraitView;
@property (nonatomic, retain) UIView *mainLandscapeView;
@property (nonatomic, retain) UIView *mainEquationView;
@property (nonatomic, retain) UIView *settingsView;
@property (nonatomic, retain) UIView *aboutView;
@property (nonatomic, retain) UIView *helpView;
@property (nonatomic, retain) UIView *mortgageView;
@property (nonatomic, retain) UIView *loanView;
@property (nonatomic, retain) UIView *helpLandView;


@property (nonatomic, retain) UILabel *lblDisplay;
@property (nonatomic, retain) UILabel *lblAngle;
@property (nonatomic, retain) UILabel *lblNumber;
@property (nonatomic, retain) UILabel *lblTip;
@property (nonatomic, retain) UIButton *soundButton;
@property (nonatomic, retain) UILabel *lblTax;
@property (nonatomic, retain) UIWebView *webView;
@property (nonatomic, retain) IBOutlet PickerViewController *pickerViewController;
@property (nonatomic, retain) IBOutlet ColorPickerViewController *colorPickerViewController;



@property (nonatomic, retain) UILabel *lblDisplay2;
@property (nonatomic, retain) UILabel *lblNumber2;
@property (nonatomic, retain) UILabel *lblTip2;
@property (nonatomic, retain) UIButton *soundButton2;
@property (nonatomic, retain) UILabel *lblTax2;
@property (nonatomic, retain) UIWebView *webView2;
@property (nonatomic, retain) UIButton *eqButton;
@property (nonatomic, retain) UIButton *eqExit;

@property (nonatomic, retain) UIButton *expEvaluateButton;
@property (nonatomic, retain) UITextView *expInputTextField;
@property (nonatomic, retain) UITextField *expResultTextField;

@property (nonatomic, retain) UITextField *txtDisplayEQ;
@property (nonatomic, retain) UITextView *txtViewEQ;

@property (nonatomic, retain) UIButton *settingsButton;
@property (nonatomic, retain) UIButton *helpButton;
@property (nonatomic, retain) UIButton *aboutButton;
@property (nonatomic, retain) UIButton *mortgageButton;
@property (nonatomic, retain) UIButton *loanButton;
@property (nonatomic, retain) UIButton *helpLandButton;

@property (nonatomic, retain) UIButton *btn0;
@property (nonatomic, retain) UIButton *btn1;
@property (nonatomic, retain) UIButton *btn2;
@property (nonatomic, retain) UIButton *btn3;
@property (nonatomic, retain) UIButton *btn4;
@property (nonatomic, retain) UIButton *btn5;
@property (nonatomic, retain) UIButton *btn6;
@property (nonatomic, retain) UIButton *btn7;
@property (nonatomic, retain) UIButton *btn8;
@property (nonatomic, retain) UIButton *btn9;
@property (nonatomic, retain) UIButton *btnAdd;
@property (nonatomic, retain) UIButton *btnSubtract;
@property (nonatomic, retain) UIButton *btnMultiply;
@property (nonatomic, retain) UIButton *btnDivide;
@property (nonatomic, retain) UIButton *btnBack;
@property (nonatomic, retain) UIButton *btnNegative;
@property (nonatomic, retain) UIButton *btnPower2;
@property (nonatomic, retain) UIButton *btnPower3;
@property (nonatomic, retain) UIButton *btnPower;
@property (nonatomic, retain) UIButton *btnPercent;
@property (nonatomic, retain) UIButton *btnSquare;
@property (nonatomic, retain) UIButton *btnEquals;
@property (nonatomic, retain) UIButton *btnC;
@property (nonatomic, retain) UIButton *btnMC;
@property (nonatomic, retain) UIButton *btnMR;
@property (nonatomic, retain) UIButton *btnMMinus;
@property (nonatomic, retain) UIButton *btnMPlus;
@property (nonatomic, retain) UIButton *btnNoSound;
@property (nonatomic, retain) UIButton *btnSettip;
@property (nonatomic, retain) UIButton *btnTaxPlus;
@property (nonatomic, retain) UIButton *btnTipPlus;
@property (nonatomic, retain) UIButton *btnSettax;
@property (nonatomic, retain) UIButton *btnSound;
@property (nonatomic, retain) UIButton *btnDecimal;

@property (nonatomic, retain) UIButton *btn0lnd;
@property (nonatomic, retain) UIButton *btn1lnd;
@property (nonatomic, retain) UIButton *btn2lnd;
@property (nonatomic, retain) UIButton *btn3lnd;
@property (nonatomic, retain) UIButton *btn4lnd;
@property (nonatomic, retain) UIButton *btn5lnd;
@property (nonatomic, retain) UIButton *btn6lnd;
@property (nonatomic, retain) UIButton *btn7lnd;
@property (nonatomic, retain) UIButton *btn8lnd;
@property (nonatomic, retain) UIButton *btn9lnd;
@property (nonatomic, retain) UIButton *btnAddlnd;
@property (nonatomic, retain) UIButton *btnSubtractlnd;
@property (nonatomic, retain) UIButton *btnMultiplylnd;
@property (nonatomic, retain) UIButton *btnDividelnd;
@property (nonatomic, retain) UIButton *btnBacklnd;
@property (nonatomic, retain) UIButton *btnNegativelnd;
@property (nonatomic, retain) UIButton *btnPower2lnd;
@property (nonatomic, retain) UIButton *btnPower3lnd;
@property (nonatomic, retain) UIButton *btnPowerlnd;
@property (nonatomic, retain) UIButton *btnPercentlnd;
@property (nonatomic, retain) UIButton *btnSquarelnd;
@property (nonatomic, retain) UIButton *btnEqualslnd;
@property (nonatomic, retain) UIButton *btnClnd;
@property (nonatomic, retain) UIButton *btnMClnd;
@property (nonatomic, retain) UIButton *btnMRlnd;
@property (nonatomic, retain) UIButton *btnMMinuslnd;
@property (nonatomic, retain) UIButton *btnMPluslnd;
@property (nonatomic, retain) UIButton *btnNoSoundlnd;
@property (nonatomic, retain) UIButton *btnSettiplnd;
@property (nonatomic, retain) UIButton *btnTipPluslnd;
@property (nonatomic, retain) UIButton *btnTaxPluslnd;
@property (nonatomic, retain) UIButton *btnSettaxlnd;
@property (nonatomic, retain) UIButton *btnSoundlnd;
@property (nonatomic, retain) UIButton *btnDecimallnd;
@property (nonatomic, retain) UIButton *btnTaxMinuslnd;

@property (nonatomic, retain) UIButton *btn0eq;
@property (nonatomic, retain) UIButton *btn1eq;
@property (nonatomic, retain) UIButton *btn2eq;
@property (nonatomic, retain) UIButton *btn3eq;
@property (nonatomic, retain) UIButton *btn4eq;
@property (nonatomic, retain) UIButton *btn5eq;
@property (nonatomic, retain) UIButton *btn6eq;
@property (nonatomic, retain) UIButton *btn7eq;
@property (nonatomic, retain) UIButton *btn8eq;
@property (nonatomic, retain) UIButton *btn9eq;
@property (nonatomic, retain) UIButton *btnAddeq;
@property (nonatomic, retain) UIButton *btnSubtracteq;
@property (nonatomic, retain) UIButton *btnMultiplyeq;
@property (nonatomic, retain) UIButton *btnDivideeq;
@property (nonatomic, retain) UIButton *btnBackeq;
@property (nonatomic, retain) UIButton *btnNegativeeq;
@property (nonatomic, retain) UIButton *btnPower2eq;
@property (nonatomic, retain) UIButton *btnPower3eq;
@property (nonatomic, retain) UIButton *btnPowereq;
@property (nonatomic, retain) UIButton *btnPercenteq;
@property (nonatomic, retain) UIButton *btnSquareeq;
@property (nonatomic, retain) UIButton *btnEqualseq;
@property (nonatomic, retain) UIButton *btnCeq;
@property (nonatomic, retain) UIButton *btnMCeq;
@property (nonatomic, retain) UIButton *btnMReq;
@property (nonatomic, retain) UIButton *btnMMinuseq;
@property (nonatomic, retain) UIButton *btnMPluseq;
@property (nonatomic, retain) UIButton *btnNoSoundeq;
@property (nonatomic, retain) UIButton *btnSettipeq;
@property (nonatomic, retain) UIButton *btnTipPluseq;
@property (nonatomic, retain) UIButton *btnTaxPluseq;
@property (nonatomic, retain) UIButton *btnSettaxeq;
@property (nonatomic, retain) UIButton *btnSoundeq;
@property (nonatomic, retain) UIButton *btnDecimaleq;
@property (nonatomic, retain) UIButton *btnSinheq;
@property (nonatomic, retain) UIButton *btnAsineq;
@property (nonatomic, retain) UIButton *btnSineq;
@property (nonatomic, retain) UIButton *btnRoundeq;
@property (nonatomic, retain) UIButton *btnUndoeq;
@property (nonatomic, retain) UIButton *btnDtoreq;
@property (nonatomic, retain) UIButton *btnCosheq;
@property (nonatomic, retain) UIButton *btnAcoseq;
@property (nonatomic, retain) UIButton *btnCoseq;
@property (nonatomic, retain) UIButton *btnTruneq;
@property (nonatomic, retain) UIButton *btnOpenPareq;
@property (nonatomic, retain) UIButton *btnDeleq;
@property (nonatomic, retain) UIButton *btnHomeeq;
@property (nonatomic, retain) UIButton *btnClosePareq;
@property (nonatomic, retain) UIButton *btnAbseq;
@property (nonatomic, retain) UIButton *btnTaneq;
@property (nonatomic, retain) UIButton *btnAtaneq;
@property (nonatomic, retain) UIButton *btnTanheq;
@property (nonatomic, retain) UIButton *btnRtodeq;
@property (nonatomic, retain) UIButton *btnLefteq;
@property (nonatomic, retain) UIButton *btnDoublePareq;
@property (nonatomic, retain) UIButton *btn1overXeq;
@property (nonatomic, retain) UIButton *btnLneq;
@property (nonatomic, retain) UIButton *btnLogeq;
@property (nonatomic, retain) UIButton *btnEoverXeq;
@property (nonatomic, retain) UIButton *btnPieq;
@property (nonatomic, retain) UIButton *btnRighteq;
@property (nonatomic, retain) UIButton *btnEndeq;
@property (nonatomic, retain) UIButton *btnSigneq;
@property (nonatomic, retain) UIButton *btnDegeq;
@property (nonatomic, retain) UIButton *btnRadeq;

@property (nonatomic, retain) UIWebView *webQuotes;
@property (nonatomic, retain) UIWebView *webLoanQuotes;

@property (nonatomic, retain) UITextField *purchasePrice;
@property (nonatomic, retain) UITextField *downPayment;
@property (nonatomic, retain) UITextField *mortgageTerm;
@property (nonatomic, retain) UITextField *interestRate;
@property (nonatomic, retain) UITextField *propertyTax;
@property (nonatomic, retain) UITextField *propertyInsurance;
@property (nonatomic, retain) UITextField *loanAmount;
@property (nonatomic, retain) UITextField *loanTerm;
@property (nonatomic, retain) UITextField *interestRateLoan;

@property (nonatomic, retain) UILabel *monthlyUntil;
@property (nonatomic, retain) UILabel *monthlyAfter;
@property (nonatomic, retain) UILabel *payments;
@property (nonatomic, retain) UILabel *payDate;
@property (nonatomic, retain) UILabel *monthlyPrinciple;
@property (nonatomic, retain) UILabel *payDateLoan;
@property (nonatomic, retain) UILabel *paymentsLoan;


@property (nonatomic, retain) UIActivityIndicatorView *processing;

@property (nonatomic, retain) UIButton *btnDeg;



-(IBAction)	evaluate:(id) sender;
-(IBAction)	retainParserAction:(id) sender;

-(IBAction)write1:(id)sender;
-(IBAction)write2:(id)sender;
-(IBAction)write3:(id)sender;
-(IBAction)write4:(id)sender;
-(IBAction)write5:(id)sender;
-(IBAction)write6:(id)sender;
-(IBAction)write7:(id)sender;
-(IBAction)write8:(id)sender;
-(IBAction)write9:(id)sender;
-(IBAction)write0:(id)sender;
/*-(IBAction)writeAdd:(id)sender;
 -(IBAction)writeSubtract:(id)sender;
 -(IBAction)writeMultiply:(id)sender;
 -(IBAction)writeDivide:(id)sender;
 -(IBAction)writeBack:(id)sender;
 -(IBAction)writeNegative:(id)sender;
 -(IBAction)writePower2:(id)sender;
 -(IBAction)writePower3:(id)sender;
 -(IBAction)writePower:(id)sender;
 -(IBAction)writeSquare:(id)sender;
 -(IBAction)writeEquals:(id)sender;
 -(IBAction)writeC:(id)sender;
 -(IBAction)writeMC:(id)sender;
 -(IBAction)writeMR:(id)sender;
 -(IBAction)writeMMinus:(id)sender;
 -(IBAction)writeMPlus:(id)sender;
 -(IBAction)writeNoSound:(id)sender;
 -(IBAction)writeSettip:(id)sender;
 -(IBAction)writeTipPlus:(id)sender;
 -(IBAction)writeSettax:(id)sender;
 -(IBAction)writeTaxPlus:(id)sender;
 -(IBAction)writeSound:(id)sender;*/




-(IBAction)write1EQ:(id)sender;
-(IBAction)write2EQ:(id)sender;
-(IBAction)write3EQ:(id)sender;
-(IBAction)write4EQ:(id)sender;
-(IBAction)write5EQ:(id)sender;
-(IBAction)write6EQ:(id)sender;
-(IBAction)write7EQ:(id)sender;
-(IBAction)write8EQ:(id)sender;
-(IBAction)write9EQ:(id)sender;
-(IBAction)write0EQ:(id)sender;
-(IBAction)writecEQ:(id)sender;
-(IBAction)writePlusEQ:(id)sender;
-(IBAction)writeMinusEQ:(id)sender;
-(IBAction)writeMultEQ:(id)sender;
-(IBAction)writeDivideEQ:(id)sender;

-(IBAction)writeParentLeftEQ:(id)sender;
-(IBAction)writeParentRightEQ:(id)sender;
-(IBAction)writeParentBothEQ:(id)sender;
-(IBAction)writePiEQ:(id)sender;
-(IBAction)writeDotEQ:(id)sender;
-(IBAction)writeSinEQ:(id)sender; 
-(IBAction)writeCosEQ:(id)sender; 
-(IBAction)writeTanEQ:(id)sender;
-(IBAction)writeSinhEQ:(id)sender;
-(IBAction)writeCoshEQ:(id)sender;
-(IBAction)writeTanhEQ:(id)sender;
-(IBAction)writeaSinEQ:(id)sender;
-(IBAction)writeaCosEQ:(id)sender;
-(IBAction)writeaTanEQ:(id)sender;


-(IBAction)cursorLeftEQ:(id)sender;
-(IBAction)cursorRightEQ:(id)sender;
-(IBAction)pow2EQ:(id)sender;
-(IBAction)pow3EQ:(id)sender;
-(IBAction)sqrtEQ:(id)sender;

-(IBAction)lnEQ:(id)sender;
-(IBAction)logEQ:(id)sender;
-(IBAction)dtorEQ:(id)sender;
-(IBAction)rtodEQ:(id)sender;
-(IBAction)expEQ:(id)sender;
-(IBAction)absEQ:(id)sender;

-(IBAction)truncEQ:(id)sender;	
-(IBAction)roundEQ:(id)sender;
-(IBAction)invEQ:(id)sender;

-(IBAction)delBackEQ:(id)sender;
-(IBAction)deleteEQ:(id)sender;

-(IBAction)useResultEQ:(id)sender;
-(IBAction)cursorHomeEQ:(id)sender;
-(IBAction)cursorEndEQ:(id)sender;
-(IBAction)powerXEQ:(id)sender;
-(IBAction)signEQ:(id)sender;


-(IBAction)writec:(id)sender;
-(IBAction)writed:(id)sender;
-(IBAction)writeplus:(id)sender;
-(IBAction)writeminus:(id)sender;
-(IBAction)writemultiply:(id)sender;
-(IBAction)writedivide:(id)sender;
-(IBAction)writepower:(id)sender;
-(IBAction)findanswer:(id)sender;
-(IBAction)findsquare:(id)sender;
-(IBAction)memoryclear:(id)sender;
-(IBAction)memoryremind:(id)sender;
-(IBAction)memoryplus:(id)sender;
-(IBAction)memoryminus:(id)sender;
-(IBAction)back:(id)sender;
-(IBAction)percent:(id)sender;
-(IBAction)settax:(id)sender;
-(IBAction)taxplus:(id)sender;
-(IBAction)taxminus:(id)sender;
-(IBAction)power2:(id)sender;
-(IBAction)power3:(id)sender;
-(IBAction)signChange:(id)sender;
-(IBAction)doSound:(id)sender;
-(IBAction)settip:(id)sender;
-(IBAction)tipplus:(id)sender;
-(IBAction)nosound:(id)sender;
-(BOOL)okLength:(NSString *) myString; 
-(void)writeNumber:(NSString *)myNumber;
-(void)formatValue:(UILabel *)objLabel;
-(void)clearCurrentView;
-(void)GetLabelByOrientation;
-(IBAction)showEquation:(id)sender;
-(IBAction)exitEquation:(id)sender;
-(void)insertText: (NSString*)text;
-(void)doDelBack:(UITextView *)objText;
-(void)doDelete:(UITextView *)objText;

-(IBAction)showSettings:(id)sender;
-(IBAction)exitSettings:(id)sender;
-(IBAction)showHelp:(id)sender;
-(IBAction)exitHelp:(id)sender;
-(IBAction)showAbout:(id)sender;
-(IBAction)exitAbout:(id)sender;
-(IBAction)showMortgage:(id)sender;
-(IBAction)exitMortgage:(id)sender;
-(IBAction)showLoan:(id)sender;
-(IBAction)exitLoan:(id)sender;
-(IBAction)showHelpLand:(id)sender;
-(IBAction)exitHelpLand:(id)sender;
-(IBAction)undoEQ:(id)sender;
-(void)setButtonImage:(NSString *)strTheme;

-(void)textDidChange:(id)sender;
-(void)doSignEQ:(UITextView *) objText; 
-(NSString*) dtorFunction:(NSString *) strFunction;

-(IBAction)callMortgage:(id)sender;
-(IBAction)callLoan:(id)sender;
-(IBAction)resetMortgage:(id)sender;
-(IBAction)resetLoan:(id)sender;
-(IBAction)DegRad:(id)sender;

@end

