//
//  ViewController.m
//  mdf_week1
//
//  Created by James McPherson on 11/25/12.
//  Copyright (c) 2012 James McPherson. All rights reserved.
//

#import "ViewController.h"
#import "CustomTableCell.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    //NSArray to declare Cupcake Objects
    cupcakeArray = [[NSArray alloc] initWithObjects:@"Canoli", @"Banana Foster", @"Chocolate Hazlenut", @"Red Velvet", @"White Chocolate Mac", @"Peanut Butter Cup", @"Almond Joy", @"Turtle", @"Tiramisu", @"Limoncello", @"S'mores", @"Peanut Butter & Jelly", @"Strawberry Lemonade", nil];
    
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

-(NSInteger)tableView:(UITableView*)tableView numberOfRowsInSection:(NSInteger)section
{
    return [cupcakeArray count];
}

-(UITableViewCell*)tableView:(UITableView*)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //Create an Identifier String to pass into reusable cell
    static NSString* cellIdentifier = @"Cell";
    
    //Create UITableViewCell that is reusable
    CustomTableCell* cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    //checks for the existence of a cell
    if (cell == nil) {
        cell = [[CustomTableCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
        
    NSArray* views = [[NSBundle mainBundle] loadNibNamed:@"CustomTableCellView" owner:nil options:nil];
        
        for (UIView* view in views)
        {
            if([view isKindOfClass:[CustomTableCell class]])
            {
                cell = (CustomTableCell*)view;
            }
        }
    }
    
    //cell.textLabel.text = [cupcakeArray objectAtIndex:indexPath.row];
    
    return cell;
}

@end
