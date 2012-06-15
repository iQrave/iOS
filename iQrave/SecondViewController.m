//
//  SecondViewController.m
//  iQrave
//
//  Created by Andrew Rauh on 6/7/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController
@synthesize readerView, resultText;




- (void)viewDidLoad
{
    readerView = [[ZBarReaderView alloc] init]; 
    [super viewDidLoad];
    
    [self.view addSubview:readerView];
    readerView.frame = self.view.frame;
    readerView.center = CGPointMake(160, 230);
    
    
    
    readerView.readerDelegate = self;
    
    
    if(TARGET_IPHONE_SIMULATOR) {
        cameraSim = [[ZBarCameraSimulator alloc]
                     initWithViewController: self];
        cameraSim.readerView = readerView;
    }
    
    
    //[self showQRReader];
	// Do any additional setup after loading the view, typically from a nib.
}








//- (void)showQRReader
//{
//         ZBarReaderViewController *reader = [ZBarReaderViewController new];
//        reader.readerDelegate = self;
//        reader.supportedOrientationsMask = ZBarOrientationMaskAll;
//        
//        ZBarImageScanner *scanner = reader.scanner;
//        // TODO: (optional) additional reader configuration here
//        
//        // EXAMPLE: disable rarely used I2/5 to improve performance
//        [scanner setSymbology: ZBAR_I25
//                       config: ZBAR_CFG_ENABLE
//                           to: 0];
//        
//        // present and release the controller
//        [self presentModalViewController: reader
//                                animated: YES];
//}



//TODO:
//implement delegate methods
//- (void) imagePickerController: (UIImagePickerController*) reader
// didFinishPickingMediaWithInfo: (NSDictionary*) info
//{
//    id<NSFastEnumeration> results =
//    [info objectForKey: ZBarReaderControllerResults];
//    UIImage *image =
//    [info objectForKey: UIImagePickerControllerOriginalImage];
//    
//}

- (void)viewDidAppear:(BOOL)animated {
    
    [readerView start];

}

- (void) readerView: (ZBarReaderView*) view
     didReadSymbols: (ZBarSymbolSet*) syms
          fromImage: (UIImage*) img
{
    
    ScannedData *scannedData = [ScannedData sharedInstance];
    // do something useful with results
    for(ZBarSymbol *sym in syms) {
        resultText.text = sym.data;
        scannedData.scannedDataString = sym.data;
        
        //if ([scannedData.scannedDataString isEqualToString:@"Lab Cafe - Ann Arbor"]) {
            
            [self performSegueWithIdentifier:@"data" sender:nil];

            
       // }
        //NSLog(@"%@", sym.data);
        break;        
        
    }
}

- (void)viewWillUnload {
    
    [readerView stop];

}

- (void)viewDidDisappear:(BOOL)animated {
    
    [readerView stop];

    
    
}

- (void) willRotateToInterfaceOrientation: (UIInterfaceOrientation) orient
                                 duration: (NSTimeInterval) duration
{
    // compensate for view rotation so camera preview is not rotated
    [readerView willRotateToInterfaceOrientation: orient
                                        duration: duration];
}



- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
