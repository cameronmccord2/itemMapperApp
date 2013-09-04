//
//  MainNavViewController.m
//  Item Mapper
//
//  Created by Taylor McCord on 8/23/13.
//  Copyright (c) 2013 McCord Inc. All rights reserved.
//

#import "MainNavViewController.h"
#import "MyItemsListViewController.h"

@interface MainNavViewController ()

@end

@implementation MainNavViewController



- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        MyItemsListViewController *myItemsListViewController = [[MyItemsListViewController alloc] initWithStyle:UITableViewStylePlain];
        [[self view] addSubview:[myItemsListViewController view]];
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
