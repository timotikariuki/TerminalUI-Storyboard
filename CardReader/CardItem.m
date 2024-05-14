//
//  CardItem.m
//  CardReader
//
//  Created by star on 5/14/24.
//

#import "CardItem.h"

@implementation CardItem

- (instancetype)initWithId:(NSString*)itemId itemName:(NSString*)itemName {
    self = [super init];
    if (self) {
        _itemId = itemId;
        _itemName = itemName;
    }
    return self;
}

@end
