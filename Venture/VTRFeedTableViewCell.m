//
//  VTRFeedTableViewCell.m
//  Venture
//
//  Created by Julian Weiss on 3/5/16.
//  Copyright © 2016 Julian Weiss. All rights reserved.
//

#import "VTRFeedTableViewCell.h"
#import "CompactConstraint.h"
#import "VTRThemeManager.h"

@implementation VTRFeedTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    if (self) {
        self.clipsToBounds = YES;
        
        self.contentView.backgroundColor = self.backgroundColor = [UIColor clearColor];
        self.preservesSuperviewLayoutMargins = NO;
        self.layoutMargins = self.separatorInset = UIEdgeInsetsMake(0, 0, 0, 0);
        
        _feedImageView = [[FLAnimatedImageView alloc] init];
        _feedImageView.translatesAutoresizingMaskIntoConstraints = NO;
        _feedImageView.contentMode = UIViewContentModeScaleAspectFill;
        _feedImageView.backgroundColor = [VTRThemeManager themeBackgroundColor];
        [self.contentView addSubview:_feedImageView];
        
        [self.contentView addCompactConstraints:@[@"image.centerY = super.centerY",
                                                  @"image.centerX = super.centerX",
                                                  @"image.width = super.width * 1.1",
                                                  @"image.height = super.height * 1.1"]
                                        metrics:nil
                                          views:@{@"image" : _feedImageView}];
        
        UIInterpolatingMotionEffect *horizontalParallaxEffect = [[UIInterpolatingMotionEffect alloc] initWithKeyPath:@"center.x" type:UIInterpolatingMotionEffectTypeTiltAlongHorizontalAxis];
        horizontalParallaxEffect.minimumRelativeValue = @(-10.0);
        horizontalParallaxEffect.maximumRelativeValue = @(10.0);
        
        UIInterpolatingMotionEffect *verticalParallaxEffect = [[UIInterpolatingMotionEffect alloc] initWithKeyPath:@"center.y" type:UIInterpolatingMotionEffectTypeTiltAlongVerticalAxis];
        verticalParallaxEffect.minimumRelativeValue = @(-10.0);
        verticalParallaxEffect.maximumRelativeValue = @(10.0);
        
        UIMotionEffectGroup *group = [[UIMotionEffectGroup alloc] init];
        group.motionEffects = @[horizontalParallaxEffect, verticalParallaxEffect];
        [_feedImageView addMotionEffect:group];
    }
    
    return self;
}

- (void)prepareForReuse {
    [super prepareForReuse];
    
    _feedImageView.image = nil;
}

@end
