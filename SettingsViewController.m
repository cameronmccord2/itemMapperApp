//
//  SettingsViewController.m
//  Item Mapper
//
//  Created by Taylor McCord on 8/23/13.
//  Copyright (c) 2013 McCord Inc. All rights reserved.
//

#import "SettingsViewController.h"

@interface SettingsViewController ()

@end

@implementation SettingsViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        UIImage *settingsIcon = [UIImage imageNamed:@"settingsIcon.png"];
        UITabBarItem *settingsTabBarItem = [[UITabBarItem alloc] initWithTitle:@"Settings" image:settingsIcon tag:2];
        self.tabBarItem = settingsTabBarItem;
    }
    return self;
}

- (void)viewDidLoad{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
