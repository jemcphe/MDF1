//
//  ViewController.h
//  mdf_week1
//
//  Created by James McPherson on 11/25/12.
//  Copyright (c) 2012 James McPherson. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ItemInfoViewController.h"

@interface ViewController : UIViewController <UITableViewDelegate>
{    
    //IBOutlets
    IBOutlet UITableView* cupcakeTableView;
    IBOutlet UIButton* editButton;
    
}

@property (strong, nonatomic) NSMutableArray* myCupcakes;

-(IBAction)onEdit:(id)sender;


@end
