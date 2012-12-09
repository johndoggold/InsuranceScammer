//
//  InflationViewController.h
//  InsuranceScammer
//
//  Created by John Francisco on 9/12/12.
//  Copyright (c) 2012 John Francisco. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SecondInflationViewController.h"

@interface InflationViewController : UIViewController

- (IBAction)monthlySavings:(id)sender;
- (IBAction)timeFrame:(id)sender;

@property (strong, nonatomic) IBOutlet UILabel *totalSavings;
@property (strong, nonatomic) IBOutlet UILabel *monthlyOutlet;
@property (strong, nonatomic) IBOutlet UILabel *timeOutlet;
- (IBAction)nextPage:(id)sender;

- (void) displayOutput;
- (NSString*) to_string:(float) foobar;
- (NSString*) int_to_string:(int) foobar;
- (float) calculateSavings:(float) money:(int)years;
@end
