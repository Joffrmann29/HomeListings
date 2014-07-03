//
//  TableViewController.h
//  HomeListings
//
//  Created by Administrator on 7/3/14.
//  Copyright (c) 2014 Joffrey Mann. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HomeInformation.h"
#import "ViewController.h"

@interface TableViewController : UITableViewController

@property (strong, nonatomic) NSArray *expensiveHomeArray;
@property (strong, nonatomic) NSArray *moreExpensiveArray;
@property (strong, nonatomic) NSArray *mostExpensiveArray;
@property (strong, nonatomic) ViewController *detailController;

@end
