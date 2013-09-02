//
//  History.m
//  Item Mapper
//
//  Created by Cameron McCord on 8/23/13.
//  Copyright (c) 2013 McCord Inc. All rights reserved.
//

#import "History.h"

@implementation History

@synthesize who;
@synthesize how;
@synthesize typeOfAccess;
@synthesize when;

NSString *keyWho = @"who";
NSString *keyHow = @"how";
NSString *keyTypeOfAccess = @"typeOfAccess";
NSString *keyWhen = @"when";

-(id)initWithDictionary:(NSDictionary *)dictionary{
    self = [super init];
    if (self) {
        self.who = [dictionary objectForKey:keyWho];
        self.how = [dictionary objectForKey:keyHow];
        self.typeOfAccess = [dictionary objectForKey:keyTypeOfAccess];
        self.when = [NSDate dateWithTimeIntervalSince1970:[[dictionary objectForKey:keyWhen] intValue]];
    }
    return self;
}

-(id)initWithWho:(NSString *)who how:(NSString *)how typeOfAccess:(NSString *)typeOfAccess when:(NSDate *)when{
    self = [super init];
    if (self) {
        self.who = who;
        self.how = how;
        self.typeOfAccess = typeOfAccess;
        self.when = when;
    }
    return self;
}

@end
