//
//  User.h
//  Item Mapper
//
//  Created by Cameron McCord on 8/23/13.
//  Copyright (c) 2013 McCord Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface User : NSObject

@property(nonatomic)NSInteger userId;
@property(nonatomic)NSInteger status;
@property(nonatomic)NSInteger type;
@property(nonatomic, strong)NSMutableArray *items;
@property(nonatomic, strong)NSString *firstName;
@property(nonatomic, strong)NSString *lastName;
@property(nonatomic, strong)NSString *email;
@property(nonatomic, strong)NSDate *created;

+(id)createWithDictionary:(NSDictionary *)dictionary;
-(id)initWithUserId:(NSInteger)userId status:(NSInteger)status type:(NSInteger)type items:(NSMutableArray *)items firstName:(NSString *)firstName lastName:(NSString *)lastName email:(NSString *)email created:(NSDate *)created;
@end
