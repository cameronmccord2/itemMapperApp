//
//  EditItemViewController.m
//  Item Mapper
//
//  Created by Taylor McCord on 9/4/13.
//  Copyright (c) 2013 McCord Inc. All rights reserved.
//

#import "EditItemViewController.h"

@interface EditItemViewController ()

@end

@implementation EditItemViewController

@synthesize item;
@synthesize name;
@synthesize status;
@synthesize userComment;
@synthesize code;

- (id)initWithItem:(Item *)item{
    self = [super initWithNibName:nil bundle:nil];
    if (self) {
        [[[UIApplication sharedApplication] keyWindow] addSubview:[self view]];
        self.item = item;
        self.name.text = self.item.name;
        self.status.text = [NSString stringWithFormat:@"%ld", (long)self.item.status];
        self.userComment.text = self.item.userComment;
        self.code.text = self.item.code;
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

-(IBAction)save:(id)sender{
    [[DataManager sharedManager] saveChangesForItem:item delegate:self];
}

-(IBAction)cancel:(id)sender{
    [self removeView];
}

-(IBAction)deleteItem:(id)sender{
    [[DataManager sharedManager] deleteItem:item delegate:self];
}

#pragma mark - DataManager delegate functions

-(void)deletedItem{
    
}

-(void)savedItemChanges{
    
}

-(void)networkError{
    
}

@end
