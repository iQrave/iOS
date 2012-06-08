//
//  SecondViewController.h
//  iQrave
//
//  Created by Andrew Rauh on 6/7/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ZBarSDK.h"

@interface SecondViewController : UIViewController <ZBarReaderViewDelegate>
-(void) showQRReader;

@end
