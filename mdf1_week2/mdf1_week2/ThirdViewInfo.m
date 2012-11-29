//
//  ThirdViewInfo.m
//  mdf1_week2
//
//  Created by James McPherson on 11/29/12.
//  Copyright (c) 2012 James McPherson. All rights reserved.
//

#import "ThirdViewInfo.h"

@interface ThirdViewInfo ()

@end

@implementation ThirdViewInfo

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    //Display symptoms in the textView
    symptomsLabel.text = @"Symptoms of a concussion can range from mild to severe. They can include:";
    
    textView.text = @"Acting confused, feeling spacey, or not thinking straight\n\nBeing drowsy, hard to wake up, or similar changes\n\nHeadache\n\nLoss of consciousness\n\nMemory loss (amnesia) of events before the injury or right after\n\nNausea and vomiting\n\nSeeing flashing lights\n\nFeeling like you have 'lost time'\n\n\n\nhttp://www.ncbi.nlm.nih.gov/pubmedhealth/PMH0001802/";
    
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

@end
