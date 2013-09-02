//
//  MapViewController.m
//  Item Mapper
//
//  Created by Taylor McCord on 8/23/13.
//  Copyright (c) 2013 McCord Inc. All rights reserved.
//

#import "MapViewController.h"

@interface MapViewController ()

@end

@implementation MapViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        UIImage *mapIcon = [UIImage imageNamed:@"mapIcon.png"];
        UITabBarItem *tabBarItem = [[UITabBarItem alloc] initWithTitle:@"Map" image:mapIcon tag:1];
        self.tabBarItem = tabBarItem;
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
