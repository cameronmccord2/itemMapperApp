//
//  MyItemsNavViewController.m
//  Item Mapper
//
//  Created by Taylor McCord on 8/23/13.
//  Copyright (c) 2013 McCord Inc. All rights reserved.
//

#import "MyItemsNavViewController.h"
#import "MyItemsListViewController.h"

@interface MyItemsNavViewController ()

@end

@implementation MyItemsNavViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        UIImage *listIcon = [UIImage imageNamed:@"listIcon.png"];
        UITabBarItem *listItem = [[UITabBarItem alloc] initWithTitle:@"My Items" image:listIcon tag:0];
        self.tabBarItem = listItem;
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
