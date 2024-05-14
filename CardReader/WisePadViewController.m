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
    
    CardItem *item = [[CardItem alloc] initWithId:@"WPC323220034805" itemName:@"BBPOS WisePad 3"];
    if (self.cardType == WisePOS) {
        item.itemId = @"WPC323220034805";
        item.itemName = @"BBPOS WisePOS E";
    }
    [self.arrCardReaders addObject:item];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 90.0f;
}

- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    
    NSInteger row = [indexPath row];
    
    if (row >= self.arrCardReaders.count) {
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"DescriptionCellIdentifier"];
        return cell;
    }
    
    
    WPCItemTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"WPCItemTableViewCellIdentifier" forIndexPath:indexPath];
    
    CardItem *item = [self.arrCardReaders objectAtIndex:row];
    cell.lblWiseId.text = item.itemId;
    cell.lblWiseName.text = item.itemName;
    
    return cell;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.arrCardReaders.count + 1;
}



@end
