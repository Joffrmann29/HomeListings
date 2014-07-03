//
//  HomeInformation.m
//  HomeListings
//
//  Created by Administrator on 7/3/14.
//  Copyright (c) 2014 Joffrey Mann. All rights reserved.
//

#import "HomeInformation.h"

@implementation HomeInformation

+(NSArray*)expensiveHomes
{
    /* To create an NSDictionary we use the literal syntax with curly braces. Remember that NSDictionaries are created in key-value pairs.*/
    NSDictionary *home1 = @{HomePrice : @300000, HomeSquareFt : @2300, Bedrooms : @4, Bathrooms : @2, HomeImage:[UIImage imageNamed:@"house1.png"]};
    NSDictionary *home2 = @{HomePrice : @310000, HomeSquareFt : @2400, Bedrooms : @4, Bathrooms : @3, HomeImage:[UIImage imageNamed:@"house2.jpg"]};
    NSDictionary *home3 = @{HomePrice : @315000, HomeSquareFt : @2450, Bedrooms : @4, Bathrooms : @3, HomeImage:[UIImage imageNamed:@"house3.jpg"]};
    NSDictionary *home4 = @{HomePrice : @318000, HomeSquareFt : @2500, Bedrooms : @4, Bathrooms : @3, HomeImage:[UIImage imageNamed:@"house4.jpg"]};
    
    /* To create an NSArray we use the literal syntax with brackets. Remember that NSArrays contain objects. Using literal syntax we do not need to add nil at the end! */
    NSArray *teamsArray = @[home1,home2, home3, home4];
    
    
    /* Return an NSArray of NSDictionaries from this class method */
    return teamsArray;
}

+(NSArray*)moreExpensiveHomes
{
    /* To create an NSDictionary we use the literal syntax with curly braces. Remember that NSDictionaries are created in key-value pairs.*/
    NSDictionary *home1 = @{HomePrice : @350000, HomeSquareFt : @2600, Bedrooms : @4, Bathrooms : @3, HomeImage:[UIImage imageNamed:@"house5.jpeg"]};
    NSDictionary *home2 = @{HomePrice : @355000, HomeSquareFt : @2600, Bedrooms : @4, Bathrooms : @3, HomeImage:[UIImage imageNamed:@"house6.jpg"]};
    NSDictionary *home3 = @{HomePrice : @365000, HomeSquareFt : @2650, Bedrooms : @4, Bathrooms : @3, HomeImage:[UIImage imageNamed:@"house7.jpg"]};
    
    /* To create an NSArray we use the literal syntax with brackets. Remember that NSArrays contain objects. Using literal syntax we do not need to add nil at the end! */
    NSArray *teamsArray = @[home1,home2, home3];
    
    
    /* Return an NSArray of NSDictionaries from this class method */
    return teamsArray;
}

+(NSArray*)mostExpensiveHomes
{
    /* To create an NSDictionary we use the literal syntax with curly braces. Remember that NSDictionaries are created in key-value pairs.*/
    NSDictionary *home1 = @{HomePrice : @400000, HomeSquareFt : @3300, Bedrooms : @4, Bathrooms : @4, HomeImage:[UIImage imageNamed:@"house8.jpg"]};
    NSDictionary *home2 = @{HomePrice : @405000, HomeSquareFt : @3320, Bedrooms : @4, Bathrooms : @4, HomeImage:[UIImage imageNamed:@"house9.jpg"]};
    NSDictionary *home3 = @{HomePrice : @415000, HomeSquareFt : @3400, Bedrooms : @4, Bathrooms : @4, HomeImage:[UIImage imageNamed:@"house10.jpg"]};
    
    /* To create an NSArray we use the literal syntax with brackets. Remember that NSArrays contain objects. Using literal syntax we do not need to add nil at the end! */
    NSArray *teamsArray = @[home1,home2, home3];
    
    
    /* Return an NSArray of NSDictionaries from this class method */
    return teamsArray;
}

/*+(NSArray*)nfcNorth
{
    NSDictionary *team4 = @{TeamName : @"Green Bay Packers", TeamWins : @9, TeamLosses : @7, LogoImage:[UIImage imageNamed:@"GreenBayPackers.jpg"], TeamOutlook: @"The Green Bay Packers reached the playoffs in 2013."};
    
    NSDictionary *team5 = @{TeamName : @"Chicago Bears", TeamWins : @8, TeamLosses : @8, LogoImage:[UIImage imageNamed:@"BearsHelmet.jpg"], TeamOutlook: @"The Chicago Bears missed the playoffs in 2013."};
    
    NSDictionary *team6 = @{TeamName : @"Detroit Lions", TeamWins : @8, TeamLosses : @8, LogoImage:[UIImage imageNamed:@"Megatron.jpg"], TeamOutlook: @"The Detroit Lions missed the playoffs last year."};
    
    NSDictionary *team7 = @{TeamName : @"Minnesota Vikings", TeamWins : @5, TeamLosses : @11, LogoImage:[UIImage imageNamed:@"minnesotaVikings.gif"], TeamOutlook: @"The Minnesota Vikings missed the playoffs last year."};

    NSArray *teamsArray = @[team4, team5, team6, team7];
    
    
    return teamsArray;
}

+(NSArray*)nfcWest
{
    NSDictionary *team7 = @{TeamName : @"San Fransisco 49ers", TeamWins : @11, TeamLosses : @5, LogoImage:[UIImage imageNamed:@"san-francisco49ers.gif"], TeamOutlook: @"The San Fransisco 49ers reached the NFC Championship Game in 2013."};
    
    NSDictionary *team8 = @{TeamName : @"Seattle Seahawks", TeamWins : @13, TeamLosses : @3, LogoImage:[UIImage imageNamed:@"seahawks.png"], TeamOutlook: @"The Seattle Seahawks won the Super Bowl in 2013."};
    
    NSDictionary *team9 = @{TeamName : @"Arizona Cardinals", TeamWins : @11, TeamLosses : @5, LogoImage:[UIImage imageNamed:@"cardinals.gif"], TeamOutlook: @"Despite a solid season, the Cardinals missed the playoffs in 2013."};
    
    NSDictionary *team10 = @{TeamName : @"St. Louis Rams", TeamWins : @7, TeamLosses : @9, LogoImage:[UIImage imageNamed:@"StLouisRams.png"], TeamOutlook: @"The Rams missed the playoffs in 2013."};
    
    NSArray *teamsArray = @[team7, team8, team9, team10];
    
    
    return teamsArray;
}*/

@end
