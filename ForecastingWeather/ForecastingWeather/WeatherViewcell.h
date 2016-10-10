//
//  WeatherViewcell.h
//  ForecastingWeather
//
//  Created by sri Divya on 16/11/15.
//  Copyright © 2015 Divya. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WeatherViewcell : UICollectionViewCell
@property (weak, nonatomic) IBOutlet UIImageView *weatherImageView;
@property (weak, nonatomic) IBOutlet UILabel *tempLabel;
@property (weak, nonatomic) IBOutlet UILabel *dateLabel;

@end
