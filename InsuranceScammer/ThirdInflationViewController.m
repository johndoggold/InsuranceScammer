//
//  ThirdInflationViewController.m
//  InsuranceScammer
//
//  Created by John Francisco on 10/12/12.
//  Copyright (c) 2012 John Francisco. All rights reserved.
//

#import "ThirdInflationViewController.h"

@interface ThirdInflationViewController ()

@end

@implementation ThirdInflationViewController

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
    int oldNumberPlates = _savings / _oldPrice;
    int newNumberPlates = _savings / _newPrice;
    
    _nowPlates.text = [self int_to_string:newNumberPlates];
    _oldPlates.text = [self int_to_string:oldNumberPlates];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSString*) to_string:(float) foobar
{
    return [NSString stringWithFormat:@"%.02f", foobar];
}
- (NSString*) int_to_string:(int) foobar
{
    return [NSString stringWithFormat:@"%i plates", foobar];
}

@end
