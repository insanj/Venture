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
        self.navigationBar.tintColor = [VTRThemeManager themeTintColor];
    }
    
    return self;
}

@end
