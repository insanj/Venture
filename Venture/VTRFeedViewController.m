//
//  VTRFeedViewController.m
//  Venture
//
//  Created by Julian Weiss on 2/25/16.
//  Copyright © 2016 Julian Weiss. All rights reserved.
//

#import "VTRFeedViewController.h"
#import "UIViewController+ECSlidingViewController.h"
#import "VTRThemeManager.h"
#import "VTRFeedTableViewCell.h"

@interface VTRFeedViewController ()

@property (strong, nonatomic) NSArray *feedImageURLS;

@end

@implementation VTRFeedViewController

- (instancetype)init {
    self = [super initWithStyle:UITableViewStylePlain];
    
    if (self) {
        self.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"Nearby" image:[UIImage imageNamed:@"feed"] selectedImage:[UIImage imageNamed:@"feed"]];
    }
    
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"Nearby";
    
    self.tableView.rowHeight = 140.0;
    self.tableView.backgroundColor = [VTRThemeManager themeBackgroundColor];
    self.tableView.tableFooterView = [UIView new];
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    
    [self.tableView registerClass:[VTRFeedTableViewCell class] forCellReuseIdentifier:kVentureFeedTableViewCellIdentifier];
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"sidebar"] style:UIBarButtonItemStylePlain target:self action:@selector(sidebarBarButtonItemTapped)];
    
    _feedImageURLS = @[[NSURL URLWithString:@"https://pixabay.com/static/uploads/photo/2015/09/04/23/10/dough-923037_960_720.jpg"],
                       [NSURL URLWithString:@"https://pixabay.com/static/uploads/photo/2015/09/04/22/48/restaurant-922878_960_720.jpg"],
                       [NSURL URLWithString:@"https://pixabay.com/static/uploads/photo/2016/02/29/20/17/almond-blossom-1229138_960_720.jpg"],
                       [NSURL URLWithString:@"https://pixabay.com/static/uploads/photo/2016/02/22/03/49/pecans-1214706_960_720.jpg"],
                       [NSURL URLWithString:@"https://pixabay.com/static/uploads/photo/2016/02/22/23/59/vintage-1216720_960_720.jpg"]];
}

#pragma mark - actions

- (void)sidebarBarButtonItemTapped {
    [self.slidingViewController anchorTopViewToRightAnimated:YES];
}

#pragma mark - table view

static NSString *kVentureFeedTableViewCellIdentifier = @"kVentureFeedTableViewCellIdentifier";

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _feedImageURLS.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return tableView.frame.size.height / 3.5;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    VTRFeedTableViewCell *feedCell = [tableView dequeueReusableCellWithIdentifier:kVentureFeedTableViewCellIdentifier forIndexPath:indexPath];
    [feedCell.feedImageView setPin_updateWithProgress:YES];
    [feedCell.feedImageView pin_setImageFromURL:_feedImageURLS[indexPath.row]];
    return feedCell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

@end
