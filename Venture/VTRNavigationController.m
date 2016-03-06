//
//  VTRNavigationController.m
//  Venture
//
//  Created by Julian Weiss on 2/25/16.
//  Copyright © 2016 Julian Weiss. All rights reserved.
//

#import "VTRNavigationController.h"

@implementation VTRNavigationController

- (instancetype)init {
    self = [super init];
    
    if (self) {

    }
    
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationBar.barStyle = UIBarStyleBlack;
    self.navigationBar.barTintColor = [VTRThemeManager themeBarTintColor];
    self.navigationBar.tintColor = [VTRThemeManager themeTintColor];
}

@end
