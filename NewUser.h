//
//  NewUser.h
//  Item Mapper
//
//  Created by Taylor McCord on 9/4/13.
//  Copyright (c) 2013 McCord Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NewUser : NSObject

@property(nonatomic, strong)NSMutableArray *secretQuestions;
@property(nonatomic, strong)NSString *firstName;
@property(nonatomic, strong)NSString *lastName;
@property(nonatomic, strong)NSString *email;
@property(nonatomic, strong)NSString *password;

-(id)initWithFirstName:(NSString *)firstName lastName:(NSString *)lastName email:(NSString *)email password1:(NSString *)password1 password2:(NSString *)password2 secretQuestion1:(NSString *)secretQuestion1 secretAnswer1:(NSString *)secretAnswer1 secretQuestion2:(NSString *)secretQuestion2 secretAnswer2:(NSString *)secretAnswer2 secretQuestion3:(NSString *)secretQuestion3 secretAnswer3:(NSString *)secretAnswer3 delegate:(id)delegate;

-(id)initWithFirstName:(NSString *)firstName lastName:(NSString *)lastName email:(NSString *)email password1:(NSString *)password1 password2:(NSString *)password2 secretQuestions:(NSMutableArray  *)secretQuestions delegate:(id)delegate;

@end
