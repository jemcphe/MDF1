//
//  ViewController.h
//  mdf_week1
//
//  Created by James McPherson on 11/25/12.
//  Copyright (c) 2012 James McPherson. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CustomCellView.h"

@interface ViewController : UIViewController
{
    //IBOutlets
    IBOutlet UITableView* cupcakeTableView;
    
    //NSArray for Cupcake Objects
    NSArray* cupcakeArray;
}

@end
