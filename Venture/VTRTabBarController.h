//
//  VTRTabBarController.h
//  Venture
//
//  Created by Julian Weiss on 2/25/16.
//  Copyright © 2016 Julian Weiss. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "VTRFeedViewController.h"
#import "VTRNavigationController.h"

@interface VTRTabBarController : UITabBarController

@property (strong, nonatomic) VTRNavigationController *feedNavigationController;

@end
