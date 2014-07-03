//
//  TableViewController.m
//  HomeListings
//
//  Created by Administrator on 7/3/14.
//  Copyright (c) 2014 Joffrey Mann. All rights reserved.
//

#import "TableViewController.h"

@interface TableViewController ()

@end

@implementation TableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.expensiveHomeArray = [HomeInformation expensiveHomes];
    self.moreExpensiveArray = [HomeInformation moreExpensiveHomes];
    self.mostExpensiveArray = [HomeInformation mostExpensiveHomes];
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    [self.navigationController.navigationBar setTitleTextAttributes:
     [NSDictionary dictionaryWithObjectsAndKeys:
      [UIFont fontWithName:@"Optima" size:21],
      NSFontAttributeName, nil]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
//#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 3;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
//#warning Incomplete method implementation.
    // Return the number of rows in the section.
    if(section == 0){
    return [self.expensiveHomeArray count];
    }
    else if(section == 1){
        return [self.moreExpensiveArray count];
    }
    else{
        return [self.mostExpensiveArray count];
    }
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    if(section == 0){
        return @"Homes under $350000";
    }
    else if(section == 1){
        return @"Homes between $350000 and $400000";
    }
    else{
        return @"Homes over $400000";
    }
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    NSString *priceOfHome;
    NSString *squareFeet;
    int price;
    int sqFt;
    // Configure the cell...
    if(indexPath.section == 0){
    priceOfHome = [NSString stringWithFormat:@"%@", [[self.expensiveHomeArray objectAtIndex:indexPath.row]objectForKey:HomePrice]];
    squareFeet = [NSString stringWithFormat:@"%@", [[self.expensiveHomeArray objectAtIndex:indexPath.row]objectForKey:HomeSquareFt]];
    price = [priceOfHome intValue];
    sqFt = [squareFeet intValue];
    cell.textLabel.text = [NSString stringWithFormat:@"$%i",price];
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%i Sq. Ft.", sqFt];
    cell.imageView.image = [[self.expensiveHomeArray objectAtIndex:indexPath.row]objectForKey:HomeImage];
    }
    
    else if(indexPath.section == 1){
        priceOfHome = [NSString stringWithFormat:@"%@", [[self.moreExpensiveArray objectAtIndex:indexPath.row]objectForKey:HomePrice]];
        squareFeet = [NSString stringWithFormat:@"%@", [[self.moreExpensiveArray objectAtIndex:indexPath.row]objectForKey:HomeSquareFt]];
        price = [priceOfHome intValue];
        sqFt = [squareFeet intValue];
        cell.textLabel.text = [NSString stringWithFormat:@"$%i",price];
        cell.detailTextLabel.text = [NSString stringWithFormat:@"%i Sq. Ft.", sqFt];
        cell.imageView.image = [[self.moreExpensiveArray objectAtIndex:indexPath.row]objectForKey:HomeImage];
    }
    else {
        priceOfHome = [NSString stringWithFormat:@"%@", [[self.mostExpensiveArray objectAtIndex:indexPath.row]objectForKey:HomePrice]];
        squareFeet = [NSString stringWithFormat:@"%@", [[self.mostExpensiveArray objectAtIndex:indexPath.row]objectForKey:HomeSquareFt]];
        price = [priceOfHome intValue];
        sqFt = [squareFeet intValue];
        cell.textLabel.text = [NSString stringWithFormat:@"$%i",price];
        cell.detailTextLabel.text = [NSString stringWithFormat:@"%i Sq. Ft.", sqFt];
        cell.imageView.image = [[self.mostExpensiveArray objectAtIndex:indexPath.row]objectForKey:HomeImage];
    }
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [self performSegueWithIdentifier:@"toHome" sender:indexPath];
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    _detailController = segue.destinationViewController;
    NSString *priceOfHome;
    NSString *squareFeet;
    NSString *bedrooms;
    NSString *bathrooms;
    int price;
    int sqFt;
    int bedRooms;
    int bathRooms;
    if(indexPath.section == 0){
        priceOfHome = [NSString stringWithFormat:@"%@", [[self.expensiveHomeArray objectAtIndex:indexPath.row]objectForKey:HomePrice]];
        squareFeet = [NSString stringWithFormat:@"%@", [[self.expensiveHomeArray objectAtIndex:indexPath.row]objectForKey:HomeSquareFt]];
        bedrooms = [NSString stringWithFormat:@"%@", [[self.expensiveHomeArray objectAtIndex:indexPath.row]objectForKey:Bedrooms]];
        bathrooms = [NSString stringWithFormat:@"%@", [[self.expensiveHomeArray objectAtIndex:indexPath.row]objectForKey:Bathrooms]];
        price = [priceOfHome intValue];
        sqFt = [squareFeet intValue];
        bedRooms = [bedrooms intValue];
        bathRooms = [bathrooms intValue];
        _detailController.price = price;
        _detailController.sqFootage = sqFt;
        _detailController.bedrooms = bedRooms;
        _detailController.bathrooms = bathRooms;
        _detailController.homeImage = [[self.expensiveHomeArray objectAtIndex:indexPath.row] objectForKey:HomeImage];
    }
    
    if(indexPath.section == 1){
        priceOfHome = [NSString stringWithFormat:@"%@", [[self.moreExpensiveArray objectAtIndex:indexPath.row]objectForKey:HomePrice]];
        squareFeet = [NSString stringWithFormat:@"%@", [[self.moreExpensiveArray objectAtIndex:indexPath.row]objectForKey:HomeSquareFt]];
        bedrooms = [NSString stringWithFormat:@"%@", [[self.moreExpensiveArray objectAtIndex:indexPath.row]objectForKey:Bedrooms]];
        bathrooms = [NSString stringWithFormat:@"%@", [[self.moreExpensiveArray objectAtIndex:indexPath.row]objectForKey:Bathrooms]];
        price = [priceOfHome intValue];
        sqFt = [squareFeet intValue];
        bedRooms = [bedrooms intValue];
        bathRooms = [bathrooms intValue];
        _detailController.price = price;
        _detailController.sqFootage = sqFt;
        _detailController.bedrooms = bedRooms;
        _detailController.bathrooms = bathRooms;
        _detailController.homeImage = [[self.moreExpensiveArray objectAtIndex:indexPath.row] objectForKey:HomeImage];
    }
    
    if(indexPath.section == 2){
        priceOfHome = [NSString stringWithFormat:@"%@", [[self.mostExpensiveArray objectAtIndex:indexPath.row]objectForKey:HomePrice]];
        squareFeet = [NSString stringWithFormat:@"%@", [[self.mostExpensiveArray objectAtIndex:indexPath.row]objectForKey:HomeSquareFt]];
        bedrooms = [NSString stringWithFormat:@"%@", [[self.mostExpensiveArray objectAtIndex:indexPath.row]objectForKey:Bedrooms]];
        bathrooms = [NSString stringWithFormat:@"%@", [[self.mostExpensiveArray objectAtIndex:indexPath.row]objectForKey:Bathrooms]];
        price = [priceOfHome intValue];
        sqFt = [squareFeet intValue];
        bedRooms = [bedrooms intValue];
        bathRooms = [bathrooms intValue];
        _detailController.price = price;
        _detailController.sqFootage = sqFt;
        _detailController.bedrooms = bedRooms;
        _detailController.bathrooms = bathRooms;
        _detailController.homeImage = [[self.mostExpensiveArray objectAtIndex:indexPath.row] objectForKey:HomeImage];
    }
}


@end
