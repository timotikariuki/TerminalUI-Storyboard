//
//  WisePadViewController.h
//  CardReader
//
//  Created by star on 5/14/24.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSInteger, CardReaderType) {
    WisePOS,
    WisePad
};

@interface WisePadViewController : UIViewController<UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, assign) CardReaderType cardType;
@property (nonatomic, strong) NSMutableArray* arrCardReaders;

@property (weak, nonatomic) IBOutlet UITableView *itemsTableView;


- (IBAction)onBack:(id)sender;
- (IBAction)onHelp:(id)sender;


@end

NS_ASSUME_NONNULL_END
