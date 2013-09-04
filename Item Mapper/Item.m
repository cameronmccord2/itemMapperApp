//
//  Item.m
//  Item Mapper
//
//  Created by Cameron McCord on 8/23/13.
//  Copyright (c) 2013 McCord Inc. All rights reserved.
//

#import "Item.h"

@implementation Item
@synthesize code;
@synthesize locationList;
@synthesize name;
@synthesize userComment;
@synthesize itemId;
@synthesize status;

NSString *keyLocationList = @"locationList";
NSString *keyCode = @"code";
NSString *keyName = @"name";
NSString *keyUserComment = @"userComment";
NSString *keyItemId = @"id";
NSString *keyStatus = @"status";

+(NSMutableArray *)parseList:(NSArray *)list{
    NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:list.count];
    for (NSDictionary *d in list) {
        [items addObject:[Item createWithDictionary:d]];
    }
    return items;
}

+(id)createWithDictionary:(NSDictionary *)dictionary{
    return [[Item alloc] initWithName:dictionary[keyName] comment:dictionary[keyUserComment] status:[dictionary[keyStatus] integerValue] itemId:[dictionary[keyItemId] integerValue] code:dictionary[keyCode] locationList:[Location parseList:dictionary[keyLocationList]]];
}

-(id)initWithName:(NSString *)name comment:(NSString *)comment status:(NSInteger)status itemId:(NSInteger)itemId code:(NSString *)code locationList:(NSArray *)locations{
    self = [super init];
    if (self) {
        self.locationList = locations;
        self.code = code;
        self.itemId = itemId;
        self.name = name;
        self.userComment = comment;
        self.status = status;
    }
    return self;
}

//-(id)initWithLocation:(Location *)location code:(Code *)code attributes:(Attributes *)attributes history:(History *)history id:(NSString *)id currentCode:(NSString *)currentCode locationList:(NSArray *)locationList codeList:(NSArray *)codeList attributesList:(NSArray *)attributesList historyList:(NSArray *)historyList{
//}
//
//-(id)initWithLocationList:(NSArray *)locationList codeList:(NSArray *)codeList attributesList:(NSArray *)attributesList historyList:(NSArray *)historyList id:(NSString *)id currentCode:(NSString *)currentCode{
//    Location *location = nil;
//    Code *code = nil;
//    Attributes *attributes = nil;
//    History *history = nil;
//    if (locationList && locationList.count > 0) {
//        location = [[Location alloc] initWithDictionary:[locationList objectAtIndex:0]];
//    }
//    if (codeList && codeList.count > 0) {
//        code = [[Code alloc] initWithDictionary:[codeList objectAtIndex:0]];
//    }
//    if (attributesList && attributesList.count > 0) {
//        attributes = [[Attributes alloc] initWithArrayOfAttributes:[attributesList objectAtIndex:0]];
//    }
//    if (historyList && historyList.count > 0) {
//        history = [[History alloc] initWithDictionary:[historyList objectAtIndex:0]];
//    }
//    self = [super init];
//    if (self) {
//        self.location = location;
//        self.code = code;
//        self.attributes = attributes;
//        self.history = history;
//        self.locationList = locationList;
//        self.codeList = codeList;
//        self.attributesList = attributesList;
//        self.historyList = historyList;
//        self.id = id;
//        self.currentCode = currentCode;
//    }
//    return self;
//}
@end

         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
