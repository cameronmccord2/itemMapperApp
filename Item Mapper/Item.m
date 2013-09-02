//
//  Item.m
//  Item Mapper
//
//  Created by Cameron McCord on 8/23/13.
//  Copyright (c) 2013 McCord Inc. All rights reserved.
//

#import "Item.h"

@implementation Item
@synthesize location;
@synthesize code;
@synthesize attributes;
@synthesize history;
@synthesize locationList;
@synthesize codeList;
@synthesize attributesList;
@synthesize historyList;
@synthesize id;
@synthesize currentCode;

NSString *keyLocation = @"location";
NSString *keyCode = @"code";
NSString *keyAttributes = @"attributes";
NSString *keyHistory = @"history";
NSString *keyId = @"id";
NSString *keyCurrentCode = @"currentCode";

+(NSArray *)parseList:(NSArray *)list{
    NSMutableArray *items = [[NSMutableArray alloc] initWithCapacity:list.count];
    for (NSDictionary *d in list) {
        [items addObject:[Item initWithDictionary:d]];
    }
    return items;
}

+(id)initWithDictionary:(NSDictionary *)dictionary{
    return [[Item alloc] initWithLocationList:[dictionary objectForKey:keyLocation] codeList:[dictionary objectForKey:keyCode] attributesList:[dictionary objectForKey:keyAttributes] historyList:[dictionary objectForKey:keyHistory] id:[dictionary objectForKey:keyId] currentCode:[dictionary objectForKey:keyCurrentCode]];
}

-(id)initWithLocation:(Location *)location code:(Code *)code attributes:(Attributes *)attributes history:(History *)history id:(NSString *)id currentCode:(NSString *)currentCode locationList:(NSArray *)locationList codeList:(NSArray *)codeList attributesList:(NSArray *)attributesList historyList:(NSArray *)historyList{
    self = [super init];
    if (self) {
        self.location = location;
        self.code = code;
        self.attributes = attributes;
        self.history = history;
        self.locationList = locationList;
        self.codeList = codeList;
        self.attributesList = attributesList;
        self.historyList = historyList;
        self.id = id;
        self.currentCode = currentCode;
    }
    return self;
}

-(id)initWithLocationList:(NSArray *)locationList codeList:(NSArray *)codeList attributesList:(NSArray *)attributesList historyList:(NSArray *)historyList id:(NSString *)id currentCode:(NSString *)currentCode{
    Location *location = nil;
    Code *code = nil;
    Attributes *attributes = nil;
    History *history = nil;
    if (locationList && locationList.count > 0) {
        location = [[Location alloc] initWithDictionary:[locationList objectAtIndex:0]];
    }
    if (codeList && codeList.count > 0) {
        code = [[Code alloc] initWithDictionary:[codeList objectAtIndex:0]];
    }
    if (attributesList && attributesList.count > 0) {
        attributes = [[Attributes alloc] initWithArrayOfAttributes:[attributesList objectAtIndex:0]];
    }
    if (historyList && historyList.count > 0) {
        history = [[History alloc] initWithDictionary:[historyList objectAtIndex:0]];
    }
    self = [super init];
    if (self) {
        self.location = location;
        self.code = code;
        self.attributes = attributes;
        self.history = history;
        self.locationList = locationList;
        self.codeList = codeList;
        self.attributesList = attributesList;
        self.historyList = historyList;
        self.id = id;
        self.currentCode = currentCode;
    }
    return self;
}
@end

         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
