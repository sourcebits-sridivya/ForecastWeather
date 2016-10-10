//
//  Weather.h
//  ForecastingWeather
//
//  Created by sri Divya on 16/11/15.
//  Copyright © 2015 Divya. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

NS_ASSUME_NONNULL_BEGIN
@interface Weather : NSManagedObject

@property (nonatomic, retain) NSString * date;
@property (nonatomic, retain) NSString * imageUrl;
@property (nonatomic, retain) NSString * temperature;
@property (nonatomic, retain) NSData * photoImageData;

@end

NS_ASSUME_NONNULL_END


#import "Weather+CoreDataProperties.h"
