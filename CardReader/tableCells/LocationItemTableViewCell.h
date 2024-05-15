//
//  LocationItemTableViewCell.h
//  CardReader
//
//  Created by star on 5/15/24.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface LocationItemTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *lblTitle;
@property (weak, nonatomic) IBOutlet UILabel *lblDescription;

@end

NS_ASSUME_NONNULL_END
