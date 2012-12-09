//
//  SecondInflationViewController.m
//  InsuranceScammer
//
//  Created by John Francisco on 10/12/12.
//  Copyright (c) 2012 John Francisco. All rights reserved.
//

#import "SecondInflationViewController.h"

@interface SecondInflationViewController ()

@end

@implementation SecondInflationViewController
{
    float inflatedAmount;
    float currentAmount;
    
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
    _inflatedValue.text = @"0.00";
    _chickenRicePrice.text = @"0.00";
    _yearsValue.text = [self int_to_string:_years];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)chickenRiceValue:(id)sender {
    
    UISlider *priceSlider = sender;
    currentAmount = priceSlider.value;
    _chickenRicePrice.text = [self to_string:currentAmount];
  inflatedAmount = [self calculateInflation:currentAmount :_years];
    _inflatedValue.text = [self to_string:inflatedAmount];
    
}

- (NSString*) int_to_string:(int) foobar
{
    return [NSString stringWithFormat:@"%i", foobar];
}

- (IBAction)nextPage:(id)sender {
    ThirdInflationViewController *thirdView = [[ThirdInflationViewController alloc] init];
    thirdView.newPrice = inflatedAmount;
    thirdView.oldPrice = currentAmount;
    thirdView.savings = _totalMoney;
    [self.navigationController pushViewController:thirdView animated:YES];
}
- (NSString*) to_string:(float) foobar
{
    return [NSString stringWithFormat:@"%.02f", foobar];
}

- (float) calculateInflation:(float)money:(int)years;
{
    if (years == 1)
        return money*1.05;
    else
    {
        return 1.05*[self calculateInflation:money:years-1];
    }
}

@end
