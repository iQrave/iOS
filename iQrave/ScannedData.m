//
//  ScannedData.m
//  iQrave
//
//  Created by Andrew Rauh on 6/11/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ScannedData.h"

@implementation ScannedData
@synthesize scannedDataString;

+(id) sharedInstance 
{
    static id sharedInstance = nil;
    if (sharedInstance == nil) {
        sharedInstance = [[self alloc] init];
    }
    return sharedInstance;
}

@end
