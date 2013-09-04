//
//  AnswerSecretQuestionsViewController.m
//  Item Mapper
//
//  Created by Taylor McCord on 9/4/13.
//  Copyright (c) 2013 McCord Inc. All rights reserved.
//

#import "AnswerSecretQuestionsViewController.h"

@interface AnswerSecretQuestionsViewController ()

@end

@implementation AnswerSecretQuestionsViewController

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

-(IBAction)submit:(id)sender{
    
}

-(IBAction)cancel:(id)sender{
    
}

@end
