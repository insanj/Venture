//
//  VTRSidebarTableViewController.m
//  Venture
//
//  Created by Julian Weiss on 2/29/16.
//  Copyright © 2016 Julian Weiss. All rights reserved.
//

#import "VTRSidebarTableViewController.h"

@implementation VTRSidebarTableViewController

- (instancetype)init {
    self = [super initWithStyle:UITableViewStyleGrouped];
    
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView.backgroundColor = [UIColor colorWithWhite:0.1 alpha:1.0];
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    
    self.tableView.rowHeight = 100.0;
}

- (BOOL)prefersStatusBarHidden {
    return NO;
}

- (UIStatusBarStyle)preferredStatusBarStyle {
    return UIStatusBarStyleLightContent;
}

#pragma mark - table view

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 3;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return UIEdgeInsetsInsetRect(tableView.frame, tableView.contentInset).size.height / 3.5;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *sidebarCellIdentifier = @"sidebarCellIdentifier";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:sidebarCellIdentifier];
    
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:sidebarCellIdentifier];
        cell.backgroundColor = cell.contentView.backgroundColor = [UIColor clearColor];
        
        cell.textLabel.textColor = [UIColor whiteColor];
        cell.textLabel.font = [UIFont systemFontOfSize:30.0 weight:UIFontWeightMedium];
        
        cell.detailTextLabel.textColor = [UIColor lightGrayColor];
        cell.detailTextLabel.font = [UIFont systemFontOfSize:18.0 weight:UIFontWeightRegular];
        cell.detailTextLabel.numberOfLines = 0;

        cell.tintColor = [UIColor whiteColor];
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    }
    
    if (indexPath.row == 0) {
        cell.textLabel.text = @"🌎  Nearby";
        cell.detailTextLabel.text = @"Explore local classes\n& opportunities";
    }
    
    else if (indexPath.row == 1) {
        cell.textLabel.text = @"👤  Account";
        cell.detailTextLabel.text = @"View your profile\n& search for friends";
    }
    
    else {
        cell.textLabel.text = @"🛠  Settings";
        cell.detailTextLabel.text = @"More information\n& extra options";
    }

    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

@end
