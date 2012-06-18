//
//  ProfileViewController.m
//  iQrave
//
//  Created by Andrew Rauh on 6/14/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ProfileViewController.h"
#import "ChangeUserPictureViewController.h"

@interface ProfileViewController ()

@end

@implementation ProfileViewController
@synthesize contentScrollView;

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
    contentScrollView.pagingEnabled = YES;
    contentScrollView.contentSize = CGSizeMake(320, 1000);
    [super viewDidLoad];
    
    
}

- (IBAction)changeUserPicture:(id)sender {
    
    ChangeUserPictureViewController *picChange = [[ChangeUserPictureViewController alloc] init];
    
    picChange.view.frame = CGRectMake(200, 300, 200, 300);
    
    //picChange.view.frame.size = CGSizeMake(200, 300);
    picChange.view.center = self.view.center;
    
    [self.view addSubview:picChange.view];
    
    
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
