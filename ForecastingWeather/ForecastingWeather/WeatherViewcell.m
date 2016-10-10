//
//  WeatherViewcell.m
//  ForecastingWeather
//
//  Created by sri Divya on 16/11/15.
//  Copyright © 2015 Divya. All rights reserved.
//

#import "WeatherViewcell.h"

@implementation WeatherViewcell
@synthesize weatherImageView;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        // self.backgroundView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"pic_frame.png"]];
    }
    return self;
}

@end
