//
//  User.m
//  Item Mapper
//
//  Created by Cameron McCord on 8/23/13.
//  Copyright (c) 2013 McCord Inc. All rights reserved.
//

#import "User.h"
#import "Item.h"

@implementation User

@synthesize userId;
@synthesize status;
@synthesize type;
@synthesize items;
@synthesize firstName;
@synthesize lastName;
@synthesize email;
@synthesize created;

NSString *keyUserId = @"userId";
NSString *keyStatus = @"status";
NSString *keyType = @"type";
NSString *keyItems = @"items";
NSString *keyFirstName = @"firstName";
NSString *keyLastName = @"lastName";
NSString *keyEmail = @"email";
NSString *keyCreated = @"created";

+(id)createWithDictionary:(NSDictionary *)dictionary{
    return [[User alloc] initWithUserId:[dictionary[keyUserId] integerValue]
                                 status:[dictionary[keyStatus] integerValue]
                                   type:[dictionary[keyType] integerValue]
                                  items:[Item parseList:dictionary[keyItems]]
                              firstName:dictionary[keyFirstName]
                               lastName:dictionary[keyLastName]
                                  email:dictionary[keyEmail]
                                created:dictionary[keyCreated]];
}

-(id)initWithUserId:(NSInteger)userId status:(NSInteger)status type:(NSInteger)type items:(NSMutableArray *)items firstName:(NSString *)firstName lastName:(NSString *)lastName email:(NSString *)email created:(NSDate *)created{
    self = [super init];
    if (self) {
        self.userId = userId;
        self.status = status;
        self.type = type;
        self.items = items;
        self.firstName = firstName;
        self.lastName = lastName;
        self.email = email;
        self.created = created;
    }
    return self;
}

@end
