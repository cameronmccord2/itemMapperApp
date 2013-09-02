//
//  MyItemsViewController.h
//  Item Mapper
//
//  Created by Taylor McCord on 8/23/13.
//  Copyright (c) 2013 McCord Inc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DataManager.h"

@interface MyItemsListViewController : UITableViewController<DataManagerDelegateProtocal>{
    NSMutableArray *myItems;
}

@end
