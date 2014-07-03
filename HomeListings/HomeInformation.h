//
//  HomeInformation.h
//  HomeListings
//
//  Created by Administrator on 7/3/14.
//  Copyright (c) 2014 Joffrey Mann. All rights reserved.
//

#import <Foundation/Foundation.h>

#define HomePrice @"Price of Home"
#define HomeSquareFt @"Square Footage"
#define Bedrooms @"Bedrooms"
#define Bathrooms @"Bathrooms"
#define HomeImage @"Home Image"

@interface HomeInformation : NSObject

+(NSArray*)expensiveHomes;
+(NSArray*)moreExpensiveHomes;
+(NSArray*)mostExpensiveHomes;

@end
