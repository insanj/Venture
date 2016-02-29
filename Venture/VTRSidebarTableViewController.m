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
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *sidebarCellIdentifier = @"sidebarCellIdentifier";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:sidebarCellIdentifier];
    
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:sidebarCellIdentifier];
        cell.backgroundColor = cell.contentView.backgroundColor = [UIColor clearColor];
        
        cell.textLabel.textColor = [UIColor whiteColor];
        cell.textLabel.font = [UIFont systemFontOfSize:24.0 weight:UIFontWeightSemibold];
        
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    }
    
    cell.textLabel.text = @"Home";
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

@end
