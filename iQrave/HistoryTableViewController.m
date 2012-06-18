//
//  HistoryTableViewController.m
//  iQrave
//
//  Created by Andrew Rauh on 6/15/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "HistoryTableViewController.h"
#import "HistoryCell.h"
@implementation HistoryTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UINib *cellNib = [UINib nibWithNibName:@"HistoryCell" bundle:[NSBundle mainBundle]];
    
    [[self tableView] registerNib:cellNib forCellReuseIdentifier:@"history"];
    
    self.title = @"History";
   // self.tabBarController.tabBar.isHidden = YES;
    [self.navigationController.navigationBar setHidden:YES];
    
}






- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 4;
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if (indexPath.row == 0 ) {
        static NSString *CustomCellIdentifier = @"customHistoryCell";
        
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CustomCellIdentifier];
        
        if (cell == nil) {
            
        cell = [[[NSBundle mainBundle] loadNibNamed:@"HistoryCell"
            owner:nil
            options:nil] objectAtIndex:0];
            
//            HistoryCell *historyCell = [[HistoryCell alloc] init];
//            cell = historyCell;
            
        }
        
        return cell;
        
        
        
    }
    else {
  
       
    static NSString *CellIdentifier = @"CellIdentifier";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] ;
    }
    
 //   cell.textLabel.text = [items objectAtIndex:indexPath.row];
   
        cell.textLabel.text = @"TEST";

        
   
    cell.selectionStyle = UITableViewCellSelectionStyleGray;
    
    return cell;
        
    }
    
}


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.row == 0 ) {
        
        return 200;
        
        
    }
    
    else {
        return 70;
    }
}


- (void)viewWillAppear:(BOOL)animated {
    
    [self.navigationController.navigationBar setHidden:YES];

}


- (void)refresh {
    //[self performSelector:@selector(addItem) withObject:nil afterDelay:2.0];
    NSLog(@"loading");
    [self performSelector:@selector(addItem) withObject:nil];
}


- (void)viewWillDisappear:(BOOL)animated {
    
    [self.navigationController.navigationBar setHidden:NO];
    
}

- (void)addItem {
    // Add a new time
    [self.tableView reloadData];
    
    [self stopLoading];
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [self performSegueWithIdentifier:@"historyDataView" sender:nil];
    
    
}







@end
