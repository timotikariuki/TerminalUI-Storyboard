//
//  WPCItemTableViewCell.h
//  CardReader
//
//  Created by star on 5/14/24.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface WPCItemTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *lblWiseId;
@property (weak, nonatomic) IBOutlet UILabel *lblWiseName;
@property (weak, nonatomic) IBOutlet UILabel *lblStatus;

@end

NS_ASSUME_NONNULL_END
