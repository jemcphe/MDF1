//
//  FirstPageInfo.m
//  mdf1_week2
//
//  Created by James McPherson on 11/28/12.
//  Copyright (c) 2012 James McPherson. All rights reserved.
//

#import "FirstPageInfo.h"

@interface FirstPageInfo ()

@end

@implementation FirstPageInfo

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.title = @"Definition";
    }
    return self;
}

- (void)viewDidLoad
{
    //concussionText = [[UITextView alloc] init];
    
    concussionText.text = @"A concussion is a minor traumatic brain injury (TBI) that may occur when the head hits an object, or a moving object strikes the head.\n\nIt can affect how your brain works for a while. A concussion can lead to a bad headache, changes in alertness, or loss of consciousness.\n\nA concussion can result from a fall, sports activities, and car accidents. A big movement of the brain (called jarring) in any direction can cause you to lose alertness (become unconscious). How long you stay unconscious may be a sign of the severity of the concussion.\n\nHowever, concussions don't always involve a loss of consciousness. Most people who have a concussion never pass out, but they may describe seeing all white, black, or stars. You can have a concussion and not realize it\n\nhttp://www.ncbi.nlm.nih.gov/pubmedhealth/PMH0001802/.";
    
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
