//
//  DataManager.h
//  Item Mapper
//
//  Created by Cameron McCord on 8/23/13.
//  Copyright (c) 2013 McCord Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Item.h"
#import "User.h"
#import "LoginViewController.h"
#import "CallQueue.h"

@interface DataManager : NSObject{
    NSMutableArray *myItems;
    NSMutableArray *callQueue;
    NSDecimalNumber *connectionNumber;
    NSMutableDictionary *dataFromConnectionByTag;
    NSMutableDictionary *connections;
}

@property(nonatomic, strong)LoginViewController *loginController;
@property(nonatomic, strong)CallQueue *authCall;

+(DataManager *)sharedManager;

-(void)getMyItems:(id)delegate;
-(void)refreshMyItems:(id)delegate;
-(void)saveChangesForItem:(Item *)item delegate:(id)delegate;
-(void)newItem:(Item *)newItem delegate:(id)delegate;
-(void)deleteItem:(Item *)item delegate:(id)delegate;// Implement
-(void)tryFetchingNow;
-(void)doesItemExistByCode:(NSString *)code delegate:(id)delegate;
-(void)loginWithEmail:(NSString *)email password:(NSString *)password delegate:(id)delegate;
-(void)getSecretQuestions:(NSString *)email delegate:(id)delegate;// Implement
-(void)submitSecretAnswers:(NSArray *)answers delegate:(id)delegate;
-(void) submitNewUserWithfirstName:(NSString *)firstName lastName:(NSString *)lastName email:(NSString *)email password1:(NSString *)password1 password2:(NSString *)password2 secretQuestion1:(NSString *)secretQuestion1 secretAnswer1:(NSString *)secretAnswer1 secretQuestion2:(NSString *)secretQuestion2 secretAnswer2:(NSString *)secretAnswer2 secretQuestion3:(NSString *)secretQuestion3 secretAnswer3:(NSString *)secretAnswer3 delegate:(id)delegate;// Implement
@end

@protocol DataManagerDelegateProtocal <NSObject>

@optional
-(void)myItems:(NSMutableArray *)items;
-(void)loginSuccessful:(NSString *)email password:(NSString *)password;
-(void)loginFailedInvalidData:(NSString *)email password:(NSString *)password;
-(void)loginFailedNetworkError:(NSString *)email password:(NSString *)password;
-(void)loginFailedNoNetworkConnection:(NSString *)email password:(NSString *)password;
-(void)requestedSecretQuestions:(NSArray *)secretQuestions;
-(void)newUserSuccessful;
-(void)newUserFailWithError:(NSString *)error;
-(void)networkError;
-(void)savedItemChanges;
-(void)deletedItem;

@end