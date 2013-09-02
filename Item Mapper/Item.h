//
//  Item.h
//  Item Mapper
//
//  Created by Cameron McCord on 8/23/13.
//  Copyright (c) 2013 McCord Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Location.h"
#import "Code.h"
#import "Attributes.h"
#import "History.h"

@interface Item : NSObject

@property(nonatomic, strong)NSArray *locationList;
@property(nonatomic, strong)NSArray *codeList;
@property(nonatomic, strong)NSArray *attributesList;
@property(nonatomic, strong)NSArray *historyList;
@property(nonatomic, strong)Location *location;
@property(nonatomic, strong)Code *code;
@property(nonatomic, strong)Attributes *attributes;
@property(nonatomic, strong)History *history;
@property(nonatomic, strong)NSString *id;
@property(nonatomic, strong)NSString *currentCode;

+(NSArray *)parseList;

-(id)initWithLocationList:(NSArray *)locationList codeList:(NSArray *)codeList attributesList:(NSArray *)attributesList historyList:(NSArray *)historyList id:(NSString *)id currentCode:(NSString *)currentCode;
-(id)initWithLocation:(Location *)location code:(Code *)code attributes:(Attributes *)attributes history:(History *)history id:(NSString *)id currentCode:(NSString *)currentCode locationList:(NSArray *)locationList codeList:(NSArray *)codeList attributesList:(NSArray *)attributesList historyList:(NSArray *)historyList;
+(id)initWithDictionary:(NSDictionary *)dictionary;
+(NSArray *)parseList:(NSArray *)list;
@end
