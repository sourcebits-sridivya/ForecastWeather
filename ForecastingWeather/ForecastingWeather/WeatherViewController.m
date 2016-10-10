//
//  WeatherViewController.m
//  ForecastingWeather
//
//  Created by sri Divya on 16/11/15.
//  Copyright © 2015 Divya. All rights reserved.
//

#import "WeatherViewController.h"
#import <Accelerate/Accelerate.h>
#import "UIImage+BlurredFrame.h"
#import <QuartzCore/QuartzCore.h>

@implementation WeatherViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.navigationController.navigationBar setBackgroundImage:[UIImage new] forBarMetrics:UIBarMetricsDefault];
    
    
    UIImageView *fullImageView =[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"91537465.jpg"]];
    fullImageView.frame = self.view.bounds;
    
//    UIImage *img = [UIImage imageNamed:@"91537465.jpg"];
//    
//    UIView *sampleView = [[UIView alloc] initWithFrame:CGRectMake(0, -20, [UIScreen mainScreen].bounds.size.width, CGRectGetHeight(self.navigationController.navigationBar.bounds)+5)];
//
//    img = [img applyLightEffectAtFrame: sampleView.bounds];
//   fullImageView.image = img;
//
    
  
    [self.view addSubview:fullImageView];

}

-(void)viewWillAppear:(BOOL)animated{
//    UIImage *blurredImage = [self blurryImage:[UIImage new] withBlurLevel: 0.3];
//    UIImageView *image =[[UIImageView alloc]initWithImage:blurredImage];
//    UIImage* imageOfUnderlyingView = [self convertViewToImage];
//    imageOfUnderlyingView = [imageOfUnderlyingView applyBlurWithRadius:20
//                                                             tintColor:[UIColor colorWithWhite:1.0 alpha:0.2]
//                                                 saturationDeltaFactor:1.3
//                                                             maskImage:nil];



    
//    // Add blur view
//    UIVisualEffectView *EffectView = [[UIVisualEffectView alloc] initWithEffect:[UIBlurEffect effectWithStyle:UIBlurEffectStyleLight]];
//    EffectView.frame =  self.navigationController.navigationBar.bounds;
//    EffectView.alpha = 0.8;
//    EffectView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
//    self.navigationController.navigationBar.backgroundColor = [UIColor clearColor];
//    
//    UIView *sampleView = [[UIView alloc] initWithFrame:CGRectMake(0, -20, [UIScreen mainScreen].bounds.size.width, CGRectGetHeight(self.navigationController.navigationBar.bounds) + 20)];
//    EffectView.frame = sampleView.frame;
//    
//    
//    [self.navigationController.navigationBar insertSubview:EffectView atIndex:1];
//
//    [self.navigationController.navigationBar addSubview: EffectView];
//
//    [self.navigationController.navigationBar sendSubviewToBack: EffectView];
////
}
-(UIImage *)convertViewToImage
{
    UIGraphicsBeginImageContext(self.view.bounds.size);
    [self.view drawViewHierarchyInRect:self.view.bounds afterScreenUpdates:YES];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}
- (UIImage *) imageWithView:(UIView *)view
{
    UIGraphicsBeginImageContextWithOptions(view.bounds.size, view.opaque, 0.0);
    [view.layer renderInContext:UIGraphicsGetCurrentContext()];
    
    UIImage * img = UIGraphicsGetImageFromCurrentImageContext();
    
    UIGraphicsEndImageContext();
    
    return img;
}

-(UIImage*)imageWithColor:(UIColor*)color size:(CGSize)size
{
    UIGraphicsBeginImageContext(size);
    UIBezierPath* rPath = [UIBezierPath bezierPathWithRect:CGRectMake(0., 0., size.width, size.height)];
    [color setFill];
    [rPath fill];
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)close:(id)sender {
    [self dismissViewControllerAnimated:YES completion:NULL];
}
@end
