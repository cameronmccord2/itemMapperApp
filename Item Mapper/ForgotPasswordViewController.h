//
//  ForgotPasswordViewController.h
//  Item Mapper
//
//  Created by Taylor McCord on 9/3/13.
//  Copyright (c) 2013 McCord Inc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DataManager.h"

@interface ForgotPasswordViewController : UIViewController<DataManagerDelegateProtocal>{
    IBOutlet UITextField *email;
    IBOutlet UILabel *errorMessage;
}

@property(nonatomic, strong)IBOutlet UITextField *email;
@property(nonatomic, strong)IBOutlet UILabel *errorMessage;

-(IBAction)recover:(id)sender;
-(IBAction)cancel:(id)sender;

@end
