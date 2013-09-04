//
//  NewUser.m
//  Item Mapper
//
//  Created by Taylor McCord on 9/4/13.
//  Copyright (c) 2013 McCord Inc. All rights reserved.
//

#import "NewUser.h"
#import "SecretQuestions.h"

@implementation NewUser
@synthesize firstName;
@synthesize lastName;
@synthesize email;
@synthesize password;
@synthesize secretQuestions;

-(id)initWithFirstName:(NSString *)firstName lastName:(NSString *)lastName email:(NSString *)email password1:(NSString *)password1 password2:(NSString *)password2 secretQuestion1:(NSString *)secretQuestion1 secretAnswer1:(NSString *)secretAnswer1 secretQuestion2:(NSString *)secretQuestion2 secretAnswer2:(NSString *)secretAnswer2 secretQuestion3:(NSString *)secretQuestion3 secretAnswer3:(NSString *)secretAnswer3 delegate:(id)delegate{
    self = [super init];
    if (self) {
        self.firstName = firstName;
        self.lastName = lastName;
        self.email = email;
        self.secretQuestions = [[NSMutableArray alloc] initWithObjects:[[SecretQuestions alloc] initWithQuestion:secretQuestion1 answer:secretAnswer1], [[SecretQuestions alloc] initWithQuestion:secretQuestion2 answer:secretAnswer2], [[SecretQuestions alloc] initWithQuestion:secretQuestion3 answer:secretAnswer3], nil];
        if ([password1 isEqualToString:password2]) {
            self.password = password1;
        }else
            return nil;
    }
    return self;
}

-(id)initWithFirstName:(NSString *)firstName lastName:(NSString *)lastName email:(NSString *)email password1:(NSString *)password1 password2:(NSString *)password2 secretQuestions:(NSMutableArray *)secretQuestions delegate:(id)delegate{
    self = [super init];
    if (self) {
        self.firstName = firstName;
        self.lastName = lastName;
        self.email = email;
        self.secretQuestions = secretQuestions;
        if ([password1 isEqualToString:password2]) {
            self.password = password1;
        }else
            return nil;
    }
    return self;
}

@end
