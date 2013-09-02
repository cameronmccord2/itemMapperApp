//
//  CallQueue.m
//  Item Mapper
//
//  Created by Cameron McCord on 8/23/13.
//  Copyright (c) 2013 McCord Inc. All rights reserved.
//

#import "CallQueue.h"

@implementation CallQueue
@synthesize alreadySent;
@synthesize fullUrl;
@synthesize delegate;
@synthesize type;

-(id)initQueueItem:(NSURL *)url type:(NSNumber *)newType delegate:(id)newDelegate{
    self = [super init];
    if (self) {
        fullUrl = url;
        delegate = newDelegate;
        alreadySent = NO;
        type = newType;
    }
    return self;
}
@end
