//
//  SecondInflationViewController.h
//  InsuranceScammer
//
//  Created by John Francisco on 10/12/12.
//  Copyright (c) 2012 John Francisco. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ThirdInflationViewController.h"
@interface SecondInflationViewController : UIViewController
@property int years;
@property float totalMoney;
- (IBAction)chickenRiceValue:(id)sender;
@property (strong, nonatomic) IBOutlet UILabel *chickenRicePrice;
@property (strong, nonatomic) IBOutlet UILabel *yearsValue;
@property (strong, nonatomic) IBOutlet UILabel *inflatedValue;

- (NSString*) to_string:(float) foobar;
- (NSString*) int_to_string:(int) foobar;
- (IBAction)nextPage:(id)sender;

@end
