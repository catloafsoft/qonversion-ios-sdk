//
//  QNAPIConstants.m
//  Qonversion
//
//  Created by Surik Sarkisyan on 28.09.2020.
//  Copyright © 2020 Qonversion Inc. All rights reserved.
//

#import "QNAPIConstants.h"

NSString * const kAPIBase = @"https://api.qonversion.io/";
NSString * const kInitEndpoint = @"v1/user/init";
NSString * const kActionPointsEndpointFormat = @"v2/users/%@/action-points?type=screen_view&active=1";
NSString * const kScreensEndpoint = @"v2/screens/";
NSString * const kScreenShowEndpointFormat = @"v2/screens/%@/views";
NSString * const kIdentityEndpoint = @"v2/identities";
NSString * const kPurchaseEndpoint = @"v1/user/purchase";
NSString * const kProductsEndpoint = @"v1/products/get";
NSString * const kPropertiesEndpoint = @"v1/properties";
NSString * const kAttributionEndpoint = @"attribution";

NSString * const kStoredRequestsKey = @"storedRequests";

NSString * const kAccessDeniedError = @"Access denied";
