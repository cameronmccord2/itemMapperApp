//
//  SecretQuestions.h
//  Item Mapper
//
//  Created by Taylor McCord on 9/4/13.
//  Copyright (c) 2013 McCord Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SecretQuestions : NSObject

@property(nonatomic, strong)NSString *question;
@property(nonatomic, strong)NSString *answer;

-(id)initWithQuestion:(NSString *)question answer:(NSString *)answer;

@end
