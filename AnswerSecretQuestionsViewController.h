//
//  AnswerSecretQuestionsViewController.h
//  Item Mapper
//
//  Created by Taylor McCord on 9/4/13.
//  Copyright (c) 2013 McCord Inc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DataManager.h"

@interface AnswerSecretQuestionsViewController : UIViewController<DataManagerDelegateProtocal>{
    IBOutlet UILabel *question;
    IBOutlet UILabel *errorMessage;
    IBOutlet UITextField *answer;
}

@property(nonatomic, strong)IBOutlet UILabel *question;
@property(nonatomic, strong)IBOutlet UILabel *errorMessage;
@property(nonatomic, strong)IBOutlet UITextField *answer;

-(IBAction)submit:(id)sender;
-(IBAction)cancel:(id)sender;

@end
