//
//  DataManager.m
//  Item Mapper
//
//  Created by Cameron McCord on 8/23/13.
//  Copyright (c) 2013 McCord Inc. All rights reserved.
//

#import "DataManager.h"
#import "UserManager.h"
#import "LoginViewController.h"
#import "CallQueue.h"
#import "ClassAdditions.m"
#import "NSURLConnectionWithTag.h"

@implementation DataManager

NSString *baseUrl = @"http://localhost:8909/map/";
NSString *itemsUrl = @"items";
NSString *editItemUrl = @"items/";
NSString *newItemUrl = @"items";
NSString *itemExistsUrl = @"items/exists";
NSNumber *typeMyItems, *typeDoesItemExist;


+(DataManager *)sharedManager{
    static DataManager *sharedManager;
    @synchronized(self){// this is if multiple threads do this at the exact same time
        if (!sharedManager) {
            sharedManager = [[DataManager alloc] init];
            [sharedManager extraInit];
        }
        return sharedManager;
    }
}

-(void)extraInit{
    connectionNumber = [NSDecimalNumber one];
    typeMyItems = [NSNumber numberWithInt:1];
}

-(void)doesItemExistByCode:(NSString *)code delegate:(id)delegate{
    NSURL *url = [NSURL URLWithString:[NSString stringWithFormat:@"%@%@", baseUrl, itemExistsUrl]];
    url = [url URLByAppendingQueryStringKey:@"code" value:code];
    [callQueue addObject:[[CallQueue alloc] initQueueItem:url type:typeDoesItemExist delegate:delegate]];
    [self doFetch];
}

-(void)fetchMyItems:(id)delegate{
    NSURL *url = [NSURL URLWithString:[NSString stringWithFormat:@"%@%@", baseUrl, itemsUrl]];
    url = [url URLByAppendingQueryStringKey:@"type" value:@"all"];
    url = [url URLByAppendingQueryStringKey:@"whichFields" value:@"all"];
    [callQueue addObject:[[CallQueue alloc] initQueueItem:url type:typeMyItems delegate:delegate]];
    [self doFetch];
}

-(void)tryFetchingNow{
    [self doFetch];
}

#pragma internal Functions
-(void)doFetch{
    if ([[UserManager sharedManager] hasToken]) {
        [self doFetchQueue];
    }else if([[UserManager sharedManager] hasUsername]){
        if ([[UserManager sharedManager] hasPassword]) {
            [self autoAuthenticate];
        }else{
            [self makeLogin];
        }
    }else{
        [self makeLogin];
    }
}

-(void)makeLogin{
    LoginViewController *lvc = [[LoginViewController alloc] initWithNibName:nil bundle:nil];
    
}

-(void)autoAuthenticate{
    
}

-(void)loginCall{
    
}

-(void)doFetchQueue{
    if (callQueue.count != 0) {
        for (CallQueue *cq in callQueue) {
            if (!cq.alreadySent) {
                [self doRequest:cq.fullUrl forType:cq.type finalDelegate:cq.delegate];
            }
        }
    }
}

// Initialize Connection
-(void)doRequest:(NSURL *)url forType:(NSNumber *)type finalDelegate:(id)delegate{
    NSURLRequest *req = [NSURLRequest requestWithURL:url];
    [connections setObject:[[NSURLConnectionWithTag alloc]initWithRequest:req delegate:self startImmediately:YES typeTag:type uniqueTag:connectionNumber finalDelegate:delegate] forKey:connectionNumber];
    [connectionNumber decimalNumberByAdding:[NSDecimalNumber one]];
}

// Connection handling
-(void)connection:(NSURLConnectionWithTag *)connection didReceiveData:(NSData *)data{
    if ([dataFromConnectionByTag objectForKey:connection.uniqueTag] == nil) {
        NSMutableData *newData = [[NSMutableData alloc] initWithData:data];
        [dataFromConnectionByTag setObject:newData forKey:connection.uniqueTag];
        return;
    }else{
        [[dataFromConnectionByTag objectForKey:connection.uniqueTag] appendData:data];
    }
}

-(void)connectionDidFinishLoading:(NSURLConnectionWithTag *)conn{
    if ([dataFromConnectionByTag objectForKey:conn.uniqueTag]) {
        if ([conn.typeTag isEqualToNumber:typeMyItems]) {// history, code, attributes, location
            // parse my items and return it to delegate
        }else if([conn.typeTag isEqualToNumber:typeDoesItemExist]){// history, code, attributes
            // parse and return
        }
    }else
        NSLog(@"couldnt find data for typeTag: %@", conn.typeTag);
    
    // clean up
    [dataFromConnectionByTag removeObjectForKey:conn.uniqueTag]; // after done using the data, remove it
    [connections removeObjectForKey:conn.uniqueTag];// remove the connection
}

-(void)connection:(NSURLConnectionWithTag *)conn didFailWithError:(NSError *)error{
    NSString *errorString = [NSString stringWithFormat:@"Fetch for senior audio stuff failed for url: %@, error: %@", conn.originalRequest.URL.absoluteString, [error localizedDescription]];
    UIAlertView *av = [[UIAlertView alloc] initWithTitle:@"Error" message:errorString delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
    [av show];
}
// Other additions
@end















































