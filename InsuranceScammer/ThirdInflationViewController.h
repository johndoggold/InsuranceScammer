//
//  ThirdInflationViewController.h
//  InsuranceScammer
//
//  Created by John Francisco on 10/12/12.
//  Copyright (c) 2012 John Francisco. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ThirdInflationViewController : UIViewController
@property float savings;
@property float oldPrice;
@property float newPrice;

- (NSString*) to_string:(float) foobar;
- (NSString*) int_to_string:(int) foobar;
@property (strong, nonatomic) IBOutlet UILabel *nowPlates;
@property (strong, nonatomic) IBOutlet UILabel *oldPlates;

@end
