//
//  AddLocationViewController.h
//  CardReader
//
//  Created by star on 5/15/24.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface AddLocationViewController : UIViewController<UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;

@property (weak, nonatomic) IBOutlet UITextField *txtDisplayName;
@property (weak, nonatomic) IBOutlet UITextField *txtAddress1;
@property (weak, nonatomic) IBOutlet UITextField *txtAddress2;
@property (weak, nonatomic) IBOutlet UITextField *txtCity;
@property (weak, nonatomic) IBOutlet UITextField *txtState;
@property (weak, nonatomic) IBOutlet UITextField *txtPostal;
@property (weak, nonatomic) IBOutlet UITextField *txtCountry;



- (IBAction)onClose:(id)sender;
- (IBAction)onSave:(id)sender;

@end

NS_ASSUME_NONNULL_END
