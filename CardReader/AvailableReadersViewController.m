//
//  AvailableReadersViewController.m
//  CardReader
//
//  Created by star on 5/14/24.
//

#import "AvailableReadersViewController.h"

@interface AvailableReadersViewController ()

@end

@implementation AvailableReadersViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.imgHelp.layer.borderColor = [UIColor colorWithRed:229/255.0f green:246/255.0f blue:238/255.0f alpha:1.0f].CGColor;
    self.imgHelp.layer.borderWidth = 1.0f;
    self.imgHelp.layer.cornerRadius = 8.0f;
    
    self.viewTapToPay.layer.borderColor = [UIColor colorWithRed:229/255.0f green:246/255.0f blue:238/255.0f alpha:1.0f].CGColor;
    self.viewTapToPay.layer.borderWidth = 1.0f;
    self.viewTapToPay.layer.cornerRadius = 8.0f;
}


@end
