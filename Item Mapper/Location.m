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
@synthesize userId;
@synthesize itemId;
@synthesize created;
@synthesize locationId;

NSString *keyType = @"type";
NSString *keyLongitude = @"longitude";
NSString *keyLatitude = @"latitude";
NSString *keyUserId = @"userId";
NSString *keyCreated = @"created";
NSString *keyItemId = @"itemId";
NSString *keyLocationId = @"id";

+(id)createWithDictionary:(NSDictionary *)dictionary{
    return [[Location alloc] initWithType:[dictionary[keyType] integerValue] longitude:dictionary[keyLongitude] latitude:dictionary[keyLatitude] userId:[dictionary[keyUserId] integerValue] locationId:[dictionary[keyLocationId] integerValue] itemId:[dictionary[keyItemId] integerValue] created:dictionary[keyCreated]];
}

-(id)initWithType:(NSInteger)type longitude:(NSString *)longitude latitude:(NSString *)latitude userId:(NSInteger)userId locationId:(NSInteger)locationId itemId:(NSInteger)itemId created:(NSDate *)created{
    self = [super init];
    if (self) {
        self.type = type;
        self.longitude = longitude;
        self.latitude = latitude;
        self.userId = userId;
        self.itemId = itemId;
        self.locationId = locationId;
        self.created = created;
    }
    return self;
}

+(NSArray *)parseList:(NSArray *)array{
    NSMutableArray *locations = [[NSMutableArray alloc] initWithCapacity:array.count];
    for (NSDictionary *d in array) {
        [locations addObject:[Location createWithDictionary:d]];
    }
    return locations;
}

@end
