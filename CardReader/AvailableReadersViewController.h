//
//  AvailableReadersViewController.h
//  CardReader
//
//  Created by star on 5/14/24.
//

#import <UIKit/UIKit.h>

@interface AvailableReadersViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *imgHelp;


@property (weak, nonatomic) IBOutlet UIView *viewTapToPayContainerView;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *tapToPayViewHeightConstraint;

@property (weak, nonatomic) IBOutlet UIView *viewTapToPay;

@property (weak, nonatomic) IBOutlet UIView *viewWisePad;
@property (weak, nonatomic) IBOutlet UIView *viewWisePOS;

@end

