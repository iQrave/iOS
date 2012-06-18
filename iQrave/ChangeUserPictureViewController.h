//
//  ChangeUserPictureViewController.h
//  iQrave
//
//  Created by Andrew Rauh on 6/18/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//
@protocol dismissSubView <NSObject>

- (void) dismissView;

@end




#import <UIKit/UIKit.h>



@interface ChangeUserPictureViewController : UIViewController{
    id <dismissSubView> delegate;
}


- (IBAction)dismissPressed:(id)sender;

@property (retain) id delegate;



@end
