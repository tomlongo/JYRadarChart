//
//  JYAttributeButton.m
//  JYRadarChartDemo
//
//  Created by Tommaso Longo on 21/02/2016.
//  Copyright © 2016 wcode. All rights reserved.
//

#import "JYAttributeButton.h"

CGFloat const JYToolButtonImageSize = 20.f;

@implementation JYAttributeButton

-(void)initialise {
    
    self.imageView.contentMode = UIViewContentModeScaleAspectFit;
    self.imageView.tintColor = [UIColor whiteColor];
    
    self.titleLabel.textAlignment = NSTextAlignmentCenter;
    self.titleLabel.minimumScaleFactor = 0.7;
    self.titleLabel.adjustsFontSizeToFitWidth = YES;
    
    UIImage *image = [self.imageView.image imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
    [self setImage:image forState:UIControlStateNormal];
    [self.imageView setTintColor:self.tintColor];
    
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
    CGRect frame = self.imageView.frame;
    frame.size = CGSizeMake(JYToolButtonImageSize, JYToolButtonImageSize);
    frame = CGRectMake(truncf((self.bounds.size.width - frame.size.width) / 2), 2.0f, frame.size.width, frame.size.height);
    self.imageView.frame = frame;
    
    
    frame = self.bounds;
    frame.origin.y = (self.imageView.frame.origin.y + self.imageView.frame.size.height) - 2;
    frame.origin.x = 10;
    frame.size.width -= (frame.origin.x*2);
    frame.size.height -= frame.origin.y;
    self.titleLabel.frame = frame;
    
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self initialise];
    }
    return self;
}

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self initialise];
    }
    return self;
}

@end
