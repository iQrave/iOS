//
//  ScanDataViewController.m
//  iQrave
//
//  Created by Andrew Rauh on 6/11/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ScanDataViewController.h"
#import "ScannedData.h"

@interface ScanDataViewController ()

@end

@implementation ScanDataViewController
@synthesize scannedDataLabel;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    
    ScannedData *scannedData =[ScannedData sharedInstance];
    [scannedDataLabel setText:scannedData.scannedDataString];
    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
