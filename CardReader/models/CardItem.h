//
//  CardItem.h
//  CardReader
//
//  Created by star on 5/14/24.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface CardItem : NSObject

@property (nonatomic, strong) NSString *itemId;
@property (nonatomic, strong) NSString *itemName;
@property (nonatomic, assign) Boolean isOnline;

- (instancetype)initWithId:(NSString*)itemId itemName:(NSString*)itemName isOnline:(Boolean)isOnline;

@end

NS_ASSUME_NONNULL_END
