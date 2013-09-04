//
//  LoginXIBViewController.m
//  Item Mapper
//
//  Created by Taylor McCord on 9/3/13.
//  Copyright (c) 2013 McCord Inc. All rights reserved.
//

#import "LoginXIBViewController.h"
#import "ModalViewsControllerMananger.h"

@interface LoginXIBViewController ()

@end

@implementation LoginXIBViewController

@synthesize errorMessage;
@synthesize password;
@synthesize email;

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

-(void)removeView{
    [[self view] removeFromSuperview];
}

-(IBAction)login:(id)sender{
    // TODO show thinking symbol, hide fields?
    [[DataManager sharedManager] loginWithEmail:[email text] password:[password text] delegate:self];
}

-(IBAction)cancel:(id)sender{
    [self removeView];
}

-(IBAction)newUser:(UIGestureRecognizer *)sender{
    [[ModalViewsControllerMananger sharedManager] loadNewUserView];
    [self removeView];
}

-(IBAction)forgotPassword:(UIGestureRecognizer *)sender{
    [[ModalViewsControllerMananger sharedManager] loadForgotPasswordView];
    [self removeView];
}

// from delegate
-(void)loginSuccessful:(NSString *)email password:(NSString *)password{
    
}

-(void)loginFailedInvalidData:(NSString *)email password:(NSString *)password{
    errorMessage.text = @"Login failed: Email and/or password are invalid";
}

-(void)loginFailedNetworkError:(NSString *)email password:(NSString *)password{
    errorMessage.text = @"Login failed: Network error. Please try again.";
}

-(void)loginFailedNoNetworkConnection:(NSString *)email password:(NSString *)password{
    errorMessage.text = @"Login failed: There is no network connection. Please activate WIFI or cellular data";
}

@end
