//
//  Location.h
//  Item Mapper
//
//  Created by Cameron McCord on 8/23/13.
//  Copyright (c) 2013 McCord Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Location : NSObject

@property(nonatomic, strong)NSString *type;
@property(nonatomic, strong)NSString *longitude;
@property(nonatomic, strong)NSString *latitude;
@property(nonatomic, strong)NSString *who;
@property(nonatomic, strong)NSDate *when;

-(id)initWithDictionary:(NSDictionary *)dictionary;
-(id)initWithType:(NSString *)type longitude:(NSString *)longitude latitude:(NSString *)latitude who:(NSString *)who when:(NSDate *)when;
@end
