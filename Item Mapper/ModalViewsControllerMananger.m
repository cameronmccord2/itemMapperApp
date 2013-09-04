//
//  ModalViewsControllerMananger.m
//  Item Mapper
//
//  Created by Taylor McCord on 9/3/13.
//  Copyright (c) 2013 McCord Inc. All rights reserved.
//

#import "ModalViewsControllerMananger.h"

@implementation ModalViewsControllerMananger

@synthesize loginView;
@synthesize forgotPasswordView;
@synthesize createNewUserView;

+(ModalViewsControllerMananger *)sharedManager{
    static ModalViewsControllerMananger *sharedManager;
    @synchronized(self){// this is if multiple threads do this at the exact same time
        if (!sharedManager) {
            sharedManager = [[ModalViewsControllerMananger alloc] init];
        }
        return sharedManager;
    }
}

-(void)loadForgotPasswordView{
    forgotPasswordView = [[ForgotPasswordViewController alloc] init];
}

-(void)loadLoginView{
    loginView = [[LoginXIBViewController alloc] init];
}

-(void)loadNewUserView{
    createNewUserView = [[NewUserViewController alloc] init];
}

@end
