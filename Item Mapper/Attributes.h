//
//  Attributes.h
//  Item Mapper
//
//  Created by Cameron McCord on 8/23/13.
//  Copyright (c) 2013 McCord Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Attributes : NSObject

@property(nonatomic, strong)NSArray *attributes;

-(id)initWithArrayOfAttributes:(NSArray *)attributesArray;

@end
