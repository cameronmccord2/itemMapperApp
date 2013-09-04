//
//  SecretQuestions.m
//  Item Mapper
//
//  Created by Taylor McCord on 9/4/13.
//  Copyright (c) 2013 McCord Inc. All rights reserved.
//

#import "SecretQuestions.h"

@implementation SecretQuestions

@synthesize question;
@synthesize answer;

-(id)initWithQuestion:(NSString *)question answer:(NSString *)answer{
    self = [super init];
    if (self) {
        self.question = question;
        self.answer = answer;
    }
    return self;
}
@end
