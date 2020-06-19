#import <Foundation/Foundation.h>
#import "QonversionPermission.h"
#import "QonversionProduct.h"

@interface QonversionLaunchResult : NSObject

/**
 Original Server response time
 */
@property (nonatomic, readonly) NSUInteger timestamp;

/**
 User permissions
 */
@property (nonatomic, copy, readonly) NSDictionary<NSString *, QonversionPermission *> *permissions;

/**
 All products
 */
@property (nonatomic, copy, readonly) NSDictionary<NSString *, QonversionProduct *> *products;

@end
