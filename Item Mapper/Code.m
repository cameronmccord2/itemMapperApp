//
//  Code.m
//  Item Mapper
//
//  Created by Cameron McCord on 8/23/13.
//  Copyright (c) 2013 McCord Inc. All rights reserved.
//

#import "Code.h"

@implementation Code
@synthesize code;
@synthesize howSet;
@synthesize whenSet;

NSString *keyCode = @"code";
NSString *keyHowSet = @"howSet";
NSString *keyWhenSet = @"whenSet";

-(id)initWithDictionary:(NSDictionary *)dictionary{
    self = [super init];
    if (self) {
        self.code = [dictionary objectForKey:keyCode];
        self.howSet = [dictionary objectForKey:howSet];
        self.whenSet = [NSDate dateWithTimeIntervalSince1970:[[dictionary objectForKey:whenSet]intValue]];
    }
    return self;
}

-(id)initWithCode:(NSString *)code howSet:(NSString *)howSet whenSet:(NSDate *)whenSet{
    self = [super init];
    if (self) {
        self.code = code;
        self.howSet = howSet;
        self.whenSet = whenSet;
    }
    return self;
}
@end
