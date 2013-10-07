//
//  ViewController.m
//  MapItWithGoogleMaps
//
//  Created by Daniel Baldwin on 10/7/13.
//  Copyright (c) 2013 Daniel Baldwin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController{
    GMSMapView *mapView_;
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    // Create a GMSCameraPosition that tells the map to display the
    // coordinate -33.86,151.20 at zoom level 6.
    
    GMSCameraPosition *camera = [GMSCameraPosition cameraWithLatitude:41.893740
                                                            longitude:-87.635330
                                                                 zoom:13];
    mapView_ = [GMSMapView mapWithFrame:CGRectZero camera:camera];
    mapView_.myLocationEnabled = YES;
    self.view = mapView_;
    
    // Creates a marker in the center of the map.
    CLLocationCoordinate2D mobileMakersLocation;
    mobileMakersLocation.latitude = 41.893740;
    mobileMakersLocation.longitude = -87.635330;
    
    GMSMarker *marker = [[GMSMarker alloc] init];
    marker.position = mobileMakersLocation;
    marker.title = @"Mobile Makers Academy";
    marker.snippet = @"Chicago, IL";
    marker.map = mapView_;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
