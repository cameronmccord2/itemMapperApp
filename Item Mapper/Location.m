//
//  Location.m
//  Item Mapper
//
//  Created by Cameron McCord on 8/23/13.
//  Copyright (c) 2013 McCord Inc. All rights reserved.
//

#import "Location.h"

@implementation Location

@synthesize type;
@synthesize longitude;
@synthesize latitude;
@synthesize who;
@synthesize when;

NSString *keyType = @"type";
NSString *keyLongitude = @"longitude";
NSString *keyLatitude = @"latitude";
NSString *keyWho = @"who";
NSString *keyWhen = @"when";

-(id)initWithDictionary:(NSDictionary *)dictionary{
    self = [super init];
    if (self) {
        self.type = [dictionary objectForKey:keyType];
        self.longitude = [dictionary objectForKey:keyLongitude];
        self.latitude = [dictionary objectForKey:keyLatitude];
        self.who = [dictionary objectForKey:keyWho];
        self.when = [NSDate dateWithTimeIntervalSince1970:[[dictionary objectForKey:keyWhen]intValue]];
    }
    return self;
}

-(id)initWithType:(NSString *)type longitude:(NSString *)longitude latitude:(NSString *)latitude who:(NSString *)who when:(NSDate *)when{
    self = [super init];
    if (self) {
        self.type = type;
        self.longitude = longitude;
        self.latitude = latitude;
        self.who = who;
        self.when = when;
    }
    return self;
}

@end
