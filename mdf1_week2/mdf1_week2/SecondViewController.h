//
//  SecondViewController.h
//  mdf1_week2
//
//  Created by James McPherson on 11/28/12.
//  Copyright (c) 2012 James McPherson. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondViewController : UIViewController <UITableViewDelegate>
{
    IBOutlet UITableView* infoTableView;
    NSArray* articleArray;
}


@end
