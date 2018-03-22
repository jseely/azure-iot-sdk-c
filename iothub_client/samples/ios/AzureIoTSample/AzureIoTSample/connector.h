//
//  connector.h
//  AzureIoTSample
//
//  Created by Roy Sprowl on 3/21/18.
//  Copyright © 2018 Roy Sprowl. All rights reserved.
//
#import <Foundation/Foundation.h>

#ifndef connector_h
#define connector_h

@class ViewController;

@protocol logTarget
- (void)addLogEntry: (NSString*)logEntry;
@end

void init_connector(id <logTarget> vc);

void run_ios_sample(void);

#endif /* connector_h */
