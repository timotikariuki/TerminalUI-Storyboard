//
//  CardItem.m
//  CardReader
//
//  Created by star on 5/14/24.
//

#import "CardItem.h"

@implementation CardItem

- (instancetype)initWithId:(NSString*)itemId itemName:(NSString*)itemName isOnline:(Boolean)isOnline {
    self = [super init];
    if (self) {
        _itemId = itemId;
        _itemName = itemName;
        _isOnline = isOnline;
    }
    return self;
}

@end
