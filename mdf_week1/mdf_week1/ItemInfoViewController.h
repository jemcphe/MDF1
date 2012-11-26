//
//  ItemInfoViewController.h
//  mdf_week1
//
//  Created by James McPherson on 11/25/12.
//  Copyright (c) 2012 James McPherson. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol cupcakeDelegate <NSObject>

-(void)didSelect:(NSString*) cupcakeString;

@end

@interface ItemInfoViewController : UIViewController
{
    IBOutlet UIButton* backButton;
    IBOutlet UIImageView* cupcakeImage;
    IBOutlet UILabel* cupcakeName;
}

-(IBAction)onBack:(id)sender;

@property (strong) id<cupcakeDelegate> delegate;

@end
