//
//  ThirdViewController.m
//  mdf1_week2
//
//  Created by James McPherson on 11/28/12.
//  Copyright (c) 2012 James McPherson. All rights reserved.
//

#import "ThirdViewController.h"
#import "ThirdViewInfo.h"

@interface ThirdViewController ()

@end

@implementation ThirdViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.title = NSLocalizedString(@"Symptoms", @"Symptoms");
        self.tabBarItem.image = [UIImage imageNamed:@"symptoms"];
    }
    return self;
}

- (void)viewDidLoad
{
    //Set Color for UINavigation Bar
    self.navigationController.navigationBar.tintColor = [UIColor blackColor];
    
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

-(IBAction)onClick:(id)sender
{
    //Create an instance of ThirdViewController.
    ThirdViewInfo* thirdViewInfo = [[ThirdViewInfo alloc] initWithNibName:@"ThirdViewInfo" bundle:nil];
    if (thirdViewInfo != nil) {
        [self.navigationController pushViewController:thirdViewInfo animated:TRUE];
    }
}

@end
