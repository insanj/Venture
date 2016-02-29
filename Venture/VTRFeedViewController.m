//
//  VTRFeedViewController.m
//  Venture
//
//  Created by Julian Weiss on 2/25/16.
//  Copyright © 2016 Julian Weiss. All rights reserved.
//

#import "VTRFeedViewController.h"
#import "UIViewController+ECSlidingViewController.h"

@implementation VTRFeedViewController

- (instancetype)init {
    self = [super initWithStyle:UITableViewStylePlain];
    
    if (self) {
        self.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"Feed" image:[UIImage imageNamed:@"feed"] selectedImage:[UIImage imageNamed:@"feed"]];
    }
    
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"Feed";
    
    self.tableView.rowHeight = 80.0;
    self.tableView.backgroundColor = [UIColor colorWithWhite:0.9 alpha:1.0];
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"sidebar"] style:UIBarButtonItemStylePlain target:self action:@selector(sidebarBarButtonItemTapped)];
}

#pragma mark - actions

- (void)sidebarBarButtonItemTapped {
    [self.slidingViewController anchorTopViewToRightAnimated:YES];
}

@end
