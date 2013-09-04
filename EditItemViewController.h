//
//  EditItemViewController.h
//  Item Mapper
//
//  Created by Taylor McCord on 9/4/13.
//  Copyright (c) 2013 McCord Inc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DataManager.h"
#import "Item.h"

@interface EditItemViewController : UIViewController<DataManagerDelegateProtocal>{
    IBOutlet UITextField *name;
    IBOutlet UITextField *userComment;
    IBOutlet UILabel *status;
    IBOutlet UILabel *code;
}

@property(nonatomic, strong)IBOutlet UITextField *name;
@property(nonatomic, strong)IBOutlet UITextField *userComment;
@property(nonatomic, strong)IBOutlet UILabel *status;
@property(nonatomic, strong)IBOutlet UILabel *code;
@property(nonatomic, strong)Item *item;

-(IBAction)save:(id)sender;
-(IBAction)cancel:(id)sender;
-(IBAction)deleteItem:(id)sender;

- (id)initWithItem:(Item *)item;

@end
