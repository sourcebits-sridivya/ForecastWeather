//
//  WeatherCollectionViewController.h
//  ForecastingWeather
//
//  Created by sri Divya on 16/11/15.
//  Copyright © 2015 Divya. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@class Weather;

@interface WeatherCollectionViewController : UICollectionViewController<NSURLConnectionDelegate,NSFetchedResultsControllerDelegate>
{
    NSMutableData *_responseData;
}
@property (strong, nonatomic) NSFetchedResultsController *fetchedResultsController;
@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (strong, nonatomic) Weather *record;

@end
