//
//  SecondViewController.m
//  mdf1_week2
//
//  Created by James McPherson on 11/28/12.
//  Copyright (c) 2012 James McPherson. All rights reserved.
//

#import "SecondViewController.h"
#import "SecondViewInfo.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Articles", @"Articles");
        self.tabBarItem.image = [UIImage imageNamed:@"article"];
    }
    return self;
}
							
- (void)viewDidLoad
{
    //Set Color for UINavigation Bar
    self.navigationController.navigationBar.tintColor = [UIColor blackColor];
    
    //Array for Articles in Table View
    articleArray = [[NSArray alloc] initWithObjects:@"Communication Is Key", @"Concussion Rates", @"Head Games", @"Concussion Lawsuits", @"Football To Violent", @"Junior Seau's Death", nil];
    
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
    return articleArray.count;
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
        
    }
    
    cell.textLabel.text = (NSString*)[articleArray objectAtIndex:indexPath.row];
    
    return cell;
}

- (UITableViewCellAccessoryType)tableView:(UITableView *)tableView accessoryTypeForRowWithIndexPath:(NSIndexPath *)indexPath {
    return UITableViewCellAccessoryDisclosureIndicator;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    SecondViewInfo* secondViewInfo = [[SecondViewInfo alloc] initWithNibName:@"SecondViewInfo" bundle:nil];
    if (secondViewInfo != nil) {
        NSArray* myArticle = [[NSArray alloc] initWithObjects:[articleArray objectAtIndex:indexPath.row], indexPath, nil];
        
        secondViewInfo.article = myArticle;
        
        [self.navigationController pushViewController:secondViewInfo animated:TRUE];
    }
}

@end
