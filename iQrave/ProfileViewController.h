//
//  ProfileViewController.h
//  iQrave
//
//  Created by Andrew Rauh on 6/14/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ChangeUserPictureViewController.h"
@interface ProfileViewController : UIViewController <dismissSubView>

@property (strong, nonatomic) IBOutlet UIScrollView *contentScrollView;

- (IBAction)changeUserPicture:(id)sender;

@end
