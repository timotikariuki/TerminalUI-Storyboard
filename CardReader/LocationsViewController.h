//
//  LocationsViewController.h
//  CardReader
//
//  Created by star on 5/15/24.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface LocationsViewController : UIViewController<UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) NSMutableArray *arrLocations;

@property (weak, nonatomic) IBOutlet UITableView *locationsTableView;

- (IBAction)onBack:(id)sender;

@end

NS_ASSUME_NONNULL_END
