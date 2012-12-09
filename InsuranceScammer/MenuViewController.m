//
//  MenuViewController.m
//  InsuranceScammer
//
//  Created by John Francisco on 9/12/12.
//  Copyright (c) 2012 John Francisco. All rights reserved.
//

#import "MenuViewController.h"

@interface MenuViewController ()

@end

@implementation MenuViewController

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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)inflationScammer:(id)sender {
    InflationViewController *inflationView = [[InflationViewController alloc]init];
    [self.navigationController pushViewController:inflationView animated:YES];
}
@end
