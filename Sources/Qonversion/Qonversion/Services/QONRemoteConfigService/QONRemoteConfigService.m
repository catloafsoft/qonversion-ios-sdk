//
//  QONRemoteConfigService.m
//  Qonversion
//
//  Created by Suren Sarkisyan on 21.03.2023.
//  Copyright © 2023 Qonversion Inc. All rights reserved.
//

#import "QONRemoteConfigService.h"
#import "QNAPIClient.h"
#import "QONRemoteConfigMapper.h"

@implementation QONRemoteConfigService

- (instancetype)init {
  self = [super init];
  
  if (self) {
    _apiClient = [QNAPIClient shared];
    _mapper = [QONRemoteConfigMapper new];
  }
  
  return self;
}

- (void)loadRemoteConfig:(QONRemoteConfigCompletionHandler)completion {
  __block __weak QONRemoteConfigService *weakSelf = self;
  [self.apiClient loadRemoteConfig:^(NSDictionary * _Nullable dict, NSError * _Nullable error) {
    if (error) {
      completion(nil, error);
      return;
    }
    
    QONRemoteConfig *config = [weakSelf.mapper mapRemoteConfig:dict];
    
    completion(config, error);
  }];
}

@end
