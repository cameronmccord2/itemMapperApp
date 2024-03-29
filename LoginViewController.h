//
//  LoginViewController.h
//  Item Mapper
//
//  Created by Taylor McCord on 9/4/13.
//  Copyright (c) 2013 McCord Inc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DataManager.h"

@interface LoginViewController : UIViewController <DataManagerDelegateProtocal>{
    IBOutlet UITextField *email;
    IBOutlet UITextField *password;
    IBOutlet UILabel *errorMessage;
}

@property(nonatomic, retain)IBOutlet UITextField *email;
@property(nonatomic, retain)IBOutlet UITextField *password;
@property(nonatomic, retain)IBOutlet UILabel *errorMessage;

-(IBAction)login:(id)sender;
-(IBAction)cancel:(id)sender;
-(IBAction)newUser:(id)sender;
-(IBAction)forgotPassword:(id)sender;


@end
