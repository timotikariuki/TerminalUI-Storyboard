//
//  WisePadViewController.m
//  CardReader
//
//  Created by star on 5/14/24.
//

#import "WisePadViewController.h"
#import "WPCItemTableViewCell.h"
#import "CardItem.h"

@interface WisePadViewController ()

@end

@implementation WisePadViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.arrCardReaders = [[NSMutableArray alloc] init];
    CardItem *item = [[CardItem alloc] initWithId:@"WPC323220034805" itemName:@"BBPOS WisePad 3" isOnline:YES];
    if (self.cardType == WisePOS) {
        item.itemId = @"WPC323220034806";
        item.itemName = @"BBPOS WisePOS E";
        item.isOnline = NO;
    }
    [self.arrCardReaders addObject:item];
    
    // remove separater line after the last cell
    UIView *footerView = [[UIView alloc] initWithFrame:CGRectZero];
    self.itemsTableView.tableFooterView = footerView;
}


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    CGFloat height = 90.0f;
    if (self.arrCardReaders.count == 0 && indexPath.row == 1) {
        height = 250.0f;
    }
    return height;
}

- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    
    NSInteger row = [indexPath row];
    
    if (self.arrCardReaders.count == 0 && row == 1) {
        UITableViewCell *emptyCell = [tableView dequeueReusableCellWithIdentifier:@"EmptyCellIdentifier" forIndexPath:indexPath];
        return emptyCell;
    }
    
    if (row == self.arrCardReaders.count) {
        UITableViewCell *descriptionCell = [tableView dequeueReusableCellWithIdentifier:@"DescriptionCellIdentifier" forIndexPath:indexPath];
        return descriptionCell;
    }
    
    
    WPCItemTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"WPCItemTableViewCellIdentifier" forIndexPath:indexPath];
    
    CardItem *item = [self.arrCardReaders objectAtIndex:row];
    cell.lblWiseId.text = item.itemId;
    cell.lblWiseName.text = item.itemName;
    
    UIColor *textColor = [UIColor colorWithRed:0 green:157/255.0f blue:86/255.0f alpha:1.0f];
    UIColor *bgColor = [UIColor colorWithRed:229/255.0f green:246/255.0f blue:238/255.0f alpha:1.0f];
    if (item.isOnline) {
        cell.lblStatus.text = @"Online";
    } else {
        cell.lblStatus.text = @"Offline";
        textColor = [UIColor colorWithRed:89/255.0f green:89/255.0f blue:89/255.0f alpha:1.0f];
        bgColor = [UIColor colorWithRed:236/255.0f green:237/255.0f blue:240/255.0f alpha:1.0f];
        
    }
    
    [cell.lblStatus setTextColor:textColor];
    [cell.lblStatus setBackgroundColor:bgColor];
    cell.lblStatus.layer.borderColor = bgColor.CGColor;
    cell.lblStatus.layer.borderWidth = 1.0f;
    cell.lblStatus.layer.cornerRadius = 4.0f;
    
    return cell;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    NSInteger result = self.arrCardReaders.count + 1;
    if (self.arrCardReaders.count == 0) {
        result = 2;
    }
    return result;
}



- (IBAction)onHelp:(id)sender {
    
}

- (IBAction)onBack:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
