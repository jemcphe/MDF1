//
//  ItemInfoViewController.h
//  mdf_week1
//
//  Created by James McPherson on 11/25/12.
//  Copyright (c) 2012 James McPherson. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"

@interface ItemInfoViewController : UIViewController 
{
    
    IBOutlet UIButton* backButton;
    IBOutlet UILabel* cupcakeName;
    IBOutlet UITextView* cupcakeText;
}
@property (assign) NSArray* cupcakeArray;

-(IBAction)onBack:(id)sender;

-(void)displayInfo:(NSIndexPath*)index cupcake:(NSString*)cupcake;

@end
