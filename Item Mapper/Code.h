//
//  Code.h
//  Item Mapper
//
//  Created by Cameron McCord on 8/23/13.
//  Copyright (c) 2013 McCord Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Code : NSObject

@property(nonatomic, strong)NSString *code;
@property(nonatomic, strong)NSString *howSet;
@property(nonatomic, strong)NSDate *whenSet;

-(id)initWithDictionary:(NSDictionary *)dictionary;
-(id)initWithCode:(NSString *)code howSet:(NSString *)howSet whenSet:(NSDate *)whenSet;
@end
