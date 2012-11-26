//
//  CustomCellView.h
//  mdf_week1
//
//  Created by James McPherson on 11/25/12.
//  Copyright (c) 2012 James McPherson. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomCellView : UITableViewCell

/*Declare IBOutlets as properties to be synthesized in the .m file.
 This was the only way I could actually use my objects in ViewController.m
*/
 
@property (strong, nonatomic) IBOutlet UILabel* cupcakeLabel;
@property (strong, nonatomic) IBOutlet UIImageView* logoImage;


@end
