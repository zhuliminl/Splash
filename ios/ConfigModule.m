//
//  ConfigModule.m
//  splash
//
//  Created by zx001 on 2019/5/23.
//  Copyright © 2019 Facebook. All rights reserved.
//


#import "ConfigModule.h"
#include <sys/sysctl.h>




@implementation ConfigModule


RCT_EXPORT_MODULE()

- (NSDictionary *)constantsToExport {

  
  NSString *APP_NAME = [NSBundle.mainBundle objectForInfoDictionaryKey:@"APP_NAME"];
  NSString *API_HOST = [NSBundle.mainBundle objectForInfoDictionaryKey:@"API_HOST"];
  return @{
           @"APP_NAME": [NSString stringWithFormat: @"%@", APP_NAME],
           @"API_HOST": [NSString stringWithFormat:@"%@", API_HOST]
           };
}





@end

