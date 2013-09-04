//
//  Location.h
//  Item Mapper
//
//  Created by Cameron McCord on 8/23/13.
//  Copyright (c) 2013 McCord Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Location : NSObject

@property(nonatomic)NSInteger type;
@property(nonatomic, strong)NSString *longitude;
@property(nonatomic, strong)NSString *latitude;
@property(nonatomic)NSInteger userId;
@property(nonatomic, strong)NSDate *created;
@property(nonatomic)NSInteger locationId;
@property(nonatomic)NSInteger itemId;

+(id)createWithDictionary:(NSDictionary *)dictionary;
+(NSArray *)parseList:(NSArray *)array;

-(id)initWithType:(NSInteger)type longitude:(NSString *)longitude latitude:(NSString *)latitude userId:(NSInteger)userId locationId:(NSInteger)locationId itemId:(NSInteger)itemId created:(NSDate *)created;

@end
