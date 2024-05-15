//
//  AvailableReadersViewController.m
//  CardReader
//
//  Created by star on 5/14/24.
//

#import "AvailableReadersViewController.h"
#import "WisePadViewController.h"

@interface AvailableReadersViewController ()

@end

@implementation AvailableReadersViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.imgHelp.layer.borderColor = [UIColor colorWithRed:229/255.0f green:246/255.0f blue:238/255.0f alpha:1.0f].CGColor;
    self.imgHelp.layer.borderWidth = 1.0f;
    self.imgHelp.layer.cornerRadius = 6.0f;
    
    self.viewTapToPay.layer.borderColor = [UIColor colorWithRed:229/255.0f green:246/255.0f blue:238/255.0f alpha:1.0f].CGColor;
    self.viewTapToPay.layer.borderWidth = 1.0f;
    self.viewTapToPay.layer.cornerRadius = 8.0f;
    
    UITapGestureRecognizer *payTapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(viewTapToPayTap:)];
    [self.viewTapToPay addGestureRecognizer:payTapGesture];
    self.viewTapToPay.userInteractionEnabled = YES;
    
    UITapGestureRecognizer *padTapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(viewWisePadTap:)];
    [self.viewWisePad addGestureRecognizer:padTapGesture];
    self.viewWisePad.userInteractionEnabled = YES;
    
    UITapGestureRecognizer *posTapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(viewWisePOSTap:)];
    [self.viewWisePOS addGestureRecognizer:posTapGesture];
    self.viewWisePOS.userInteractionEnabled = YES;
    
    // Hide "Tap to Pay on iPhone"
    self.tapToPayViewHeightConstraint.constant = 0.0f;
    [self.viewTapToPayContainerView setHidden:YES];
}

-(void)viewTapToPayTap:(UITapGestureRecognizer *)gesture {
    
}

-(void)viewWisePadTap:(UITapGestureRecognizer *)gesture {
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    WisePadViewController *vc= [storyboard instantiateViewControllerWithIdentifier:@"WisePadViewController"];
    vc.cardType = WisePad;
    [self presentViewController:vc animated:YES completion:nil];
}

-(void)viewWisePOSTap:(UITapGestureRecognizer *)gesture {
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    WisePadViewController *vc= [storyboard instantiateViewControllerWithIdentifier:@"WisePadViewController"];
    vc.cardType = WisePOS;
    [self presentViewController:vc animated:YES completion:nil];
}


@end
