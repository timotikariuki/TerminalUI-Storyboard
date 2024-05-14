//
//  LocationsViewController.m
//  CardReader
//
//  Created by star on 5/15/24.
//

#import "LocationsViewController.h"
#import "LocationItemTableViewCell.h"

@interface LocationsViewController ()

@end

@implementation LocationsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // remove separater line after the last cell
    UIView *footerView = [[UIView alloc] initWithFrame:CGRectZero];
    self.locationsTableView.tableFooterView = footerView;
}


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 90.0f;
}

- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    
    NSInteger row = [indexPath row];
    
    LocationItemTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"LocationItemCellIdentifier" forIndexPath:indexPath];
    
    return cell;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}



- (IBAction)onBack:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
