//
//  ForgotPasswordViewController.m
//  Item Mapper
//
//  Created by Taylor McCord on 9/3/13.
//  Copyright (c) 2013 McCord Inc. All rights reserved.
//

#import "ForgotPasswordViewController.h"

@interface ForgotPasswordViewController ()

@end

@implementation ForgotPasswordViewController

@synthesize errorMessage;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        [[[UIApplication sharedApplication] keyWindow] addSubview:[self view]];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)recover:(id)sender{
    [[DataManager sharedManager] getSecretQuestions:email.text delegate:self];
}

-(IBAction)cancel:(id)sender{
    [[self view] removeFromSuperview];
}

-(void)requestedSecretQuestions:(NSArray *)secretQuestions{
    
}

@end
