//
//  VTRThemeManager.m
//  Venture
//
//  Created by Julian Weiss on 2/25/16.
//  Copyright © 2016 Julian Weiss. All rights reserved.
//

#import "VTRThemeManager.h"

@implementation VTRThemeManager

+ (UIColor *)themeTintColor {
    return [UIColor colorWithRed:0.796 green:0.467 blue:0 alpha:1];
}

+ (UIColor *)themeSecondaryTintColor {
    return [UIColor colorWithRed:0 green:0.196 blue:0.315 alpha:1];
}

+ (UIColor *)themeBarTintColor {
    return nil;
}

+ (UIColor *)themeBackgroundColor {
    return [UIColor colorWithWhite:0.9 alpha:1.0];
}

@end
