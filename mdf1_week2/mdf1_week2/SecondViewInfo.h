//
//  SecondViewInfo.h
//  mdf1_week2
//
//  Created by James McPherson on 11/28/12.
//  Copyright (c) 2012 James McPherson. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondViewInfo : UIViewController
{
    IBOutlet UILabel* articleLabel;
    IBOutlet UILabel* authorLabel;
    IBOutlet UITextView* articleText;
}

@property (assign) NSArray* article;

-(void)displayArticle:(NSIndexPath*)index article:(NSString*)articleString;

@end
