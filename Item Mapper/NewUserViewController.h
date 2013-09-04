//
//  NewUserViewController.h
//  Item Mapper
//
//  Created by Taylor McCord on 9/3/13.
//  Copyright (c) 2013 McCord Inc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DataManager.h"

@interface NewUserViewController : UIViewController<DataManagerDelegateProtocal>{
    IBOutlet UITextField *firstName;
    IBOutlet UITextField *lastName;
    IBOutlet UITextField *email;
    IBOutlet UITextField *password1;
    IBOutlet UITextField *password2;
    IBOutlet UITextField *secretQuestion1;
    IBOutlet UITextField *secretAnswer1;
    IBOutlet UITextField *secretQuestion2;
    IBOutlet UITextField *secretAnswer2;
    IBOutlet UITextField *secretQuestion3;
    IBOutlet UITextField *secretAnswer3;
}

@property(nonatomic, string)IBOutlet UILabel *errorMessage;
@property(nonatomic, strong)IBOutlet UITextField *firstName;
@property(nonatomic, strong)IBOutlet UITextField *lastName;
@property(nonatomic, strong)IBOutlet UITextField *email;
@property(nonatomic, strong)IBOutlet UITextField *password1;
@property(nonatomic, strong)IBOutlet UITextField *password2;
@property(nonatomic, strong)IBOutlet UITextField *secretQuestion1;
@property(nonatomic, strong)IBOutlet UITextField *secretAnswer1;
@property(nonatomic, strong)IBOutlet UITextField *secretQuestion2;
@property(nonatomic, strong)IBOutlet UITextField *secretAnswer2;
@property(nonatomic, strong)IBOutlet UITextField *secretQuestion3;
@property(nonatomic, strong)IBOutlet UITextField *secretAnswer3;

-(IBAction)submit:(id)sender;
-(IBAction)cancel:(id)sender;

@end
