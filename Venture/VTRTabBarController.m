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
        
        self.tabBar.tintColor = [VTRThemeManager themeTintColor];
        self.viewControllers = @[_feedNavigationController];
    }
    
    return self;
}

@end
