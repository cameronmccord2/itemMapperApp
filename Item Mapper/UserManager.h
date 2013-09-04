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
-(BOOL)setToken:(NSString *)newToken;
-(BOOL)deleteToken;
-(BOOL)hasUsername;
-(NSString *)getUsername;
-(BOOL)setUsername:(NSString *)newUsername;
-(BOOL)deleteUsername;
-(BOOL)hasPassword;
-(NSString *)getPassword;
-(BOOL)setPassword:(NSString *)newPassword;
-(BOOL)deletePassword;
-(BOOL)deleteEverything;

@end

@protocol UserManagerDelegateProtocal <NSObject>

-(void)userIsReady;

@end
