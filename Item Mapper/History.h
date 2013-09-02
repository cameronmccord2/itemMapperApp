//
//  History.h
//  Item Mapper
//
//  Created by Cameron McCord on 8/23/13.
//  Copyright (c) 2013 McCord Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface History : NSObject

@property(nonatomic, strong)NSString *who;
@property(nonatomic, strong)NSString *how;
@property(nonatomic, strong)NSString *typeOfAccess;
@property(nonatomic, strong)NSDate *when;

-(id)initWithDictionary:(NSDictionary *)dictionary;
-(id)initWithWho:(NSString *)who how:(NSString *)how typeOfAccess:(NSString *)typeOfAccess when:(NSDate *)when;
@end
