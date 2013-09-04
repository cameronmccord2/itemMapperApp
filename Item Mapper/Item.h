//
//  Item.h
//  Item Mapper
//
//  Created by Cameron McCord on 8/23/13.
//  Copyright (c) 2013 McCord Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Location.h"

@interface Item : NSObject

@property(nonatomic, strong)NSArray *locationList;
@property(nonatomic, strong)NSString *code;
@property(nonatomic)NSInteger itemId;
@property(nonatomic, strong)NSString *name;
@property(nonatomic, strong)NSString *userComment;
@property(nonatomic)NSInteger status;


-(id)initWithName:(NSString *)name comment:(NSString *)comment status:(NSInteger)status itemId:(NSInteger)itemId code:(NSString *)code locationList:(NSArray *)locations;

+(id)createWithDictionary:(NSDictionary *)dictionary;
+(NSMutableArray *)parseList:(NSArray *)list;
@end
