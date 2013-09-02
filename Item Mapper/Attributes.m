//
//  Attributes.m
//  Item Mapper
//
//  Created by Cameron McCord on 8/23/13.
//  Copyright (c) 2013 McCord Inc. All rights reserved.
//

#import "Attributes.h"

@implementation Attributes

@synthesize attributes;

-(id)initWithArrayOfAttributes:(NSArray *)attributesArray{
    self = [super init];
    if (self) {
        attributes = attributesArray;
    }
    return self;
}
@end
