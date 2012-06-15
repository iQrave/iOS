//
//  SecondViewController.h
//  iQrave
//
//  Created by Andrew Rauh on 6/7/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ZBarSDK.h"
#import "ScannedData.h"

@interface SecondViewController : UIViewController <ZBarReaderViewDelegate>
{
    ZBarReaderView *readerView;
    UITextView *resultText;
    ZBarCameraSimulator *cameraSim;
}

@property (nonatomic, retain)  ZBarReaderView *readerView;
@property (nonatomic, retain) IBOutlet UITextView *resultText;

-(void) showQRReader;

@end
