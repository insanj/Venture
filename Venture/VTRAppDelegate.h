//
//  VTRAppDelegate.h
//  Venture
//
//  Created by Julian Weiss on 2/24/16.
//  Copyright © 2016 Julian Weiss. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ECSlidingViewController.h"
#import "VTRFeedViewController.h"
#import "VTRSidebarTableViewController.h"

@interface VTRAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) ECSlidingViewController *rootSlidingViewController;

@property (strong, nonatomic) VTRFeedViewController *rootFeedViewController;

@property (strong, nonatomic) VTRSidebarTableViewController *rootSidebarViewController;

@end
