//
//  VTRTabBarController.m
//  Venture
//
//  Created by Julian Weiss on 2/25/16.
//  Copyright © 2016 Julian Weiss. All rights reserved.
//

#import "VTRTabBarController.h"

@implementation VTRTabBarController

- (instancetype)init {
    self = [super init];
    
    if (self) {
        _feedNavigationController = [[VTRNavigationController alloc] initWithRootViewController:[[VTRFeedViewController alloc] init]];
        
        self.viewControllers = @[_feedNavigationController];
    }
    
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tabBar.tintColor = [VTRThemeManager themeTintColor];
    self.tabBar.barStyle = UIBarStyleBlack;
    self.tabBar.barTintColor = [VTRThemeManager themeBarTintColor];
}

@end
