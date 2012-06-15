//
//  ScannedData.h
//  iQrave
//
//  Created by Andrew Rauh on 6/11/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ScannedData : NSObject
@property (strong, nonatomic) NSString *scannedDataString;

+(id) sharedInstance;

@end


