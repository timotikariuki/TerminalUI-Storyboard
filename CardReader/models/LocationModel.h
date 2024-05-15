//
//  LocationModel.h
//  CardReader
//
//  Created by star on 5/15/24.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LocationModel : NSObject

@property (nonatomic, strong) NSString *displayName;
@property (nonatomic, strong) NSString *address1;
@property (nonatomic, strong) NSString *address2;
@property (nonatomic, strong) NSString *city;
@property (nonatomic, strong) NSString *state;
@property (nonatomic, strong) NSString *postal;
@property (nonatomic, strong) NSString *country;

@end

NS_ASSUME_NONNULL_END
