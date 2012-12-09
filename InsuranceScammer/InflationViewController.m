//
//  InflationViewController.m
//  InsuranceScammer
//
//  Created by John Francisco on 9/12/12.
//  Copyright (c) 2012 John Francisco. All rights reserved.
//

#import "InflationViewController.h"

@interface InflationViewController ()

@end

@implementation InflationViewController
{
    float savingAmount;
    int numberYears;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    savingAmount = 0;
    numberYears = 1;
    _monthlyOutlet.text = @"0.00";
    _timeOutlet.text = @"1";
    _totalSavings.text =@"0.00";
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)monthlySavings:(id)sender {
    UISlider* savingSlider = sender;
    savingAmount = savingSlider.value;
    _monthlyOutlet.text = [self to_string:savingAmount];
    [self displayOutput];
}

- (IBAction)timeFrame:(id)sender {
    UISlider* timeSlider = sender;
    numberYears = (int) timeSlider.value;
    _timeOutlet.text = [self int_to_string:numberYears];
    [self displayOutput];
}
- (NSString*) int_to_string:(int) foobar
{
    return [NSString stringWithFormat:@"%i", foobar];
}
- (NSString*) to_string:(float) foobar
{
   return [NSString stringWithFormat:@"%.02f", foobar];
}

- (IBAction)nextPage:(id)sender {
    SecondInflationViewController *secondView = [[SecondInflationViewController alloc] init];
    secondView.years = numberYears;
    secondView.totalMoney = savingAmount;
    [self.navigationController pushViewController:secondView animated:YES];
}

- (void) displayOutput
{
    float totalSavings;
    totalSavings = [self calculateSavings:savingAmount:numberYears];
    _totalSavings.text = [self to_string: totalSavings];
}

- (float) calculateSavings:(float)money:(int)years;
{
    if (years == 1)
        return money*12 *1.008;
    else
    {
        return 1.008*([self calculateSavings:money:years-1]+money*12);
    }
}
@end
