//
//  VTRFeedViewController.m
//  Venture
//
//  Created by Julian Weiss on 2/25/16.
//  Copyright © 2016 Julian Weiss. All rights reserved.
//

#import "VTRFeedViewController.h"

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
}

@end
