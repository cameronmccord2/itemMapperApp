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
-(void)tryFetchingNow;
-(void)doesItemExistByCode:(NSString *)code delegate:(id)delegate;
-(void)loginWithEmail:(NSString *)email password:(NSString *)password delegate:(id)delegate;

@end

@protocol DataManagerDelegateProtocal <NSObject>

-(void)myItems:(NSMutableArray *)items;
-(void)loginSuccessful:(NSString *)email password:(NSString *)password;
-(void)loginFailedInvalidData:(NSString *)email password:(NSString *)password;
-(void)loginFailedNetworkError:(NSString *)email password:(NSString *)password;
-(void)loginFailedNoNetworkConnection:(NSString *)email password:(NSString *)password;

@end