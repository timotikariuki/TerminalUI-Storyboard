//
//  AddLocationViewController.m
//  CardReader
//
//  Created by star on 5/15/24.
//

#import "AddLocationViewController.h"

@interface AddLocationViewController ()

@end

@implementation AddLocationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    self.txtDisplayName.delegate = self;
    self.txtAddress1.delegate = self;
    self.txtAddress2.delegate = self;
    self.txtCity.delegate = self;
    self.txtState.delegate = self;
    self.txtPostal.delegate = self;
    self.txtCountry.delegate = self;
    
    // Register for keyboard notifications
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(keyboardWillShow:)
                                                 name:UIKeyboardWillShowNotification
                                               object:nil];
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(keyboardWillHide:)
                                                 name:UIKeyboardWillHideNotification
                                               object:nil];
    
}


- (IBAction)onSave:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)onClose:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}


- (void)dealloc {
    // Unregister for keyboard notifications
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

// Method to adjust content inset when keyboard is shown
- (void)keyboardWillShow:(NSNotification *)notification {
    NSDictionary *info = [notification userInfo];
    CGSize kbSize = [info[UIKeyboardFrameEndUserInfoKey] CGRectValue].size;
    
    UIEdgeInsets contentInsets = UIEdgeInsetsMake(0.0, 0.0, kbSize.height, 0.0);
    self.scrollView.contentInset = contentInsets;
    self.scrollView.scrollIndicatorInsets = contentInsets;
}

// Method to reset content inset when keyboard is hidden
- (void)keyboardWillHide:(NSNotification *)notification {
    UIEdgeInsets contentInsets = UIEdgeInsetsZero;
    self.scrollView.contentInset = contentInsets;
    self.scrollView.scrollIndicatorInsets = contentInsets;
}

#pragma mark - UITextFieldDelegate

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    if (textField == self.txtDisplayName) {
        [self.txtAddress1 becomeFirstResponder];
    } else if (textField == self.txtAddress1) {
        [self.txtAddress2 becomeFirstResponder];
    } else if (textField == self.txtAddress2) {
        [self.txtCity becomeFirstResponder];
    } else if (textField == self.txtCity) {
        [self.txtState becomeFirstResponder];
    } else if (textField == self.txtState) {
        [self.txtPostal becomeFirstResponder];
    } else if (textField == self.txtPostal) {
        [self.txtCountry becomeFirstResponder];
    } else {
        [textField resignFirstResponder];
    }
    
    return YES;
}

@end
