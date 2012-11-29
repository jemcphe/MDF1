//
//  SecondViewController.m
//  mdf1_week2
//
//  Created by James McPherson on 11/28/12.
//  Copyright (c) 2012 James McPherson. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Second", @"Second");
        self.tabBarItem.image = [UIImage imageNamed:@"second"];
    }
    return self;
}
							
- (void)viewDidLoad
{
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
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

/******************* TableView Setup *********************/

//declares the number of rows in my table view
-(NSInteger)tableView:(UITableView*)tableView numberOfRowsInSection:(NSInteger)section
{
    // return only the amount of cupcakes in cupcakeArray
    return 5;
}

//Create the Cells
-(UITableViewCell*)tableView:(UITableView*)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //Create an Identifier String to pass into reusable cell
    static NSString* cellIdentifier = @"Cell";
    
    //Create UITableViewCell that is reusable
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    //checks for the existence of a cell
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
        
        //Create an array of cells derived from the UITableView
        //NSArray* views = [[NSBundle mainBundle] loadNibNamed:@"UITableView" owner:nil options:nil];
        
//        //Loop through the cells to present to display
//        for (UIView* view in views)
//        {
//            if([view isKindOfClass:[CustomCellView class]])
//            {
//                cell = (CustomCellView*)view;
//                //Sets the text of cupcakeLabel
//                cell.cupcakeLabel.text = [myCupcakes objectAtIndex:indexPath.row];
//            }
//        }
    }
    
    static int count = 1;
    cell.textLabel.text = [[NSString alloc] initWithFormat:@"Info Cell # %d", count];
    count++;
    
    return cell;
}

@end
