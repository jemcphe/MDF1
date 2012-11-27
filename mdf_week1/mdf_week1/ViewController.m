//
//  ViewController.m
//  mdf_week1
//
//  Created by James McPherson on 11/25/12.
//  Copyright (c) 2012 James McPherson. All rights reserved.
//

#import "ViewController.h"
#import "CustomCellView.h"
#import "ItemInfoViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize myCupcakes;

- (void)viewDidLoad
{
    //NSArray to declare Cupcake Objects
    myCupcakes = [[NSMutableArray alloc] initWithObjects:@"Canoli", @"Banana Foster", @"Chocolate Hazlenut", @"Red Velvet", @"White Chocolate Mac", @"Peanut Butter Cup", @"Almond Joy", @"Turtle", @"Tiramisu", @"Limoncello", @"S'mores", @"Peanut Butter & Jelly", @"Strawberry Lemonade",@"Lucky Charm", @"Carrot", @"Zucchini", @"Pumpkin Roll", @"Candy Corn", @"Pecan Pie", @"Egg Nog", nil];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

/**************** Table View Setup *******************/

//sets the height of custom cell
-(CGFloat)tableView:(UITableView*)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 70;
}

//declares the number of rows in my table view
-(NSInteger)tableView:(UITableView*)tableView numberOfRowsInSection:(NSInteger)section
{
    // return only the amount of cupcakes in cupcakeArray
    return [myCupcakes count];
}

//Create the Cells
-(UITableViewCell*)tableView:(UITableView*)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //Create an Identifier String to pass into reusable cell
    static NSString* cellIdentifier = @"Cell";
    
    //Create UITableViewCell that is reusable
    CustomCellView* cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    //checks for the existence of a cell
    if (cell == nil) {
        cell = [[CustomCellView alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    
        //Create an array of cells derived from the CustomCellView
        NSArray* views = [[NSBundle mainBundle] loadNibNamed:@"CustomCellView" owner:nil options:nil];
        
        //Loop through the cells to present to display
        for (UIView* view in views)
        {
            if([view isKindOfClass:[CustomCellView class]])
            {
                cell = (CustomCellView*)view;
                //Sets the text of cupcakeLabel
                cell.cupcakeLabel.text = [myCupcakes objectAtIndex:indexPath.row];
            }
        }
    }
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    ItemInfoViewController* selectedCupcake = [[ItemInfoViewController alloc] initWithNibName:@"ItemInfoViewController" bundle:nil];
    if (selectedCupcake != nil) {
        NSArray* cupcakeInfo = [[NSArray alloc] initWithObjects:[myCupcakes objectAtIndex:indexPath.row], indexPath, nil];
        
        selectedCupcake.cupcakeArray = cupcakeInfo;
        
//        if (delegate == nil) {
//            [delegate didSelect:[[NSString alloc] initWithFormat:@"%@", [cupcakeArray objectAtIndex:indexPath.row]] cupcakeImage:nil];
//            NSLog(@"In the delegate");
//        }
        
        
        [self presentModalViewController:selectedCupcake animated:TRUE];
    }
    NSLog(@"%@", [myCupcakes objectAtIndex:indexPath.row]);
}

/********** Editing Section **********/

//Puts the cell into edit mode
- (UITableViewCellEditingStyle)tableView:(UITableView *)tableView editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath
{
    // return a editing style for item deletion
    return UITableViewCellEditingStyleDelete;
}

//This will allow rows to be deleted
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete)
    {
        // rows that will be deleted
        NSArray *deleteRows = [NSArray arrayWithObject:indexPath];
        
        // a call to delete the row
        [myCupcakes removeObjectAtIndex:indexPath.row];
        // delete the row(s) in the rowsToDelete array
        [cupcakeTableView deleteRowsAtIndexPaths:deleteRows withRowAnimation:true];
    }
}

//function that makes edit button activate edit mode.
-(IBAction)onEdit:(id)sender
{
    editButton = (UIButton*)sender;
    
    if (editButton != nil) {
        [cupcakeTableView setEditing:TRUE];
    }
    
}





@end
