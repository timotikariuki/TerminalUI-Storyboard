//
//  LocationsViewController.m
//  CardReader
//
//  Created by star on 5/15/24.
//

#import "LocationsViewController.h"
#import "tableCells/LocationItemTableViewCell.h"
#import "models/LocationModel.h"

@interface LocationsViewController ()

@end

@implementation LocationsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // remove separater line after the last cell
    UIView *footerView = [[UIView alloc] initWithFrame:CGRectZero];
    self.locationsTableView.tableFooterView = footerView;
    
    // initialize locations array
    self.arrLocations = [[NSMutableArray alloc] init];
    
    LocationModel *location = [[LocationModel alloc] init];
    location.displayName = @"Paul Farrent";
    location.address1 = @"Haywards Heath";
    location.state = @"RH16 1UD";
    location.country = @"GB";
    
    [self.arrLocations addObject:location];
}


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 90.0f;
}

- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    
    LocationItemTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"LocationItemCellIdentifier" forIndexPath:indexPath];
    
    NSInteger row = [indexPath row];
    LocationModel *locationInfo = [self.arrLocations objectAtIndex:row];
    cell.lblTitle.text = locationInfo.displayName;
    cell.lblDescription.text = [NSString stringWithFormat:@"%@, %@ %@ %@", locationInfo.address1, locationInfo.city, locationInfo.state, locationInfo.country];
    
    return cell;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.arrLocations.count;
}



- (IBAction)onBack:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
