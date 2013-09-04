//
//  ModalViewsControllerMananger.h
//  Item Mapper
//
//  Created by Taylor McCord on 9/3/13.
//  Copyright (c) 2013 McCord Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LoginXIBViewController.h"
#import "ForgotPasswordViewController.h"
#import "NewUserViewController.h"

@interface ModalViewsControllerMananger : NSObject

@property(nonatomic, strong)LoginXIBViewController *loginView;
@property(nonatomic, strong)ForgotPasswordViewController *forgotPasswordView;
@property(nonatomic, strong)NewUserViewController *createNewUserView;

+(id)sharedManager;

-(void)loadLoginView;
-(void)loadForgotPasswordView;
-(void)loadNewUserView;

@end
