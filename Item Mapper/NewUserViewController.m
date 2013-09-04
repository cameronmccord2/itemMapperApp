//
//  NewUserViewController.m
//  Item Mapper
//
//  Created by Taylor McCord on 9/3/13.
//  Copyright (c) 2013 McCord Inc. All rights reserved.
//

#import "NewUserViewController.h"
#import "DataManager.h"

@interface NewUserViewController ()

@end

@implementation NewUserViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        [[[UIApplication sharedApplication] keyWindow] addSubview:[self view]];
    }
    return self;
}

- (void)viewDidLoad{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)removeView{
    [[self view] removeFromSuperview];
}

-(IBAction)submit:(id)sender{
    // TODO show loading
    [[DataManager sharedManager] submitNewUserWithfirstName:firstName.text lastName:lastName.text email:email.text password1:password1.text password2:password2.text secretQuestion1:secretQuestion1.text secretAnswer1:secretAnswer1.text secretQuestion2:secretQuestion2.text secretAnswer2:secretAnswer2.text secretQuestion3:secretQuestion3.text secretAnswer3:secretAnswer3.text delegate:self];
}

-(IBAction)cancel:(id)sender{
    [self removeView];
}

@end
