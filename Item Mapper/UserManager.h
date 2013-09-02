//
//  UserManager.h
//  Item Mapper
//
//  Created by Cameron McCord on 8/23/13.
//  Copyright (c) 2013 McCord Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UserManager : NSObject

+(id)sharedManager;

-(BOOL)hasToken;
-(NSString *)getToken;
-(BOOL)setToken;
-(BOOL)deleteToken;
-(BOOL)hasUsername;
-(NSString *)getUsername;
-(BOOL)setUsername;
-(BOOL)deleteUsername;
-(BOOL)hasPassword;
-(NSString *)getPassword;
-(BOOL)setPassword;
-(BOOL)deletePassword;
-(BOOL)deleteEverything;

@end

@protocol UserManagerDelegateProtocal <NSObject>

-(void)userIsReady;

@end
