//
//  ItemInfoViewController.m
//  mdf_week1
//
//  Created by James McPherson on 11/25/12.
//  Copyright (c) 2012 James McPherson. All rights reserved.
//

#import "ItemInfoViewController.h"
#import "ViewController.h"

typedef enum{
    CANOLI = 0,
    BANANAFOSTER,
    CHOCOLATEHAZLENUT,
    REDVELVET,
    WHITECHOCOLATEMAC,
    PEANUTBUTTERCUP,
    ALMONDJOY,
    TURTLE,
    TIRAMISU,
    LIMONCELLO,
    SMORES,
    PEANUTBUTTERJELLY,
    STRAWBERRYLEMONADE,
    LUCKYCHARM,
    CARROT,
    ZUCCHINI,
    PUMPKINROLL,
    CANDYCORN,
    PECANPIE,
    EGGNOG
}flavors;

@interface ItemInfoViewController ()

@end

@implementation ItemInfoViewController

@synthesize cupcakeArray;

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
    NSString* cupcake = [cupcakeArray objectAtIndex:0];
    NSIndexPath* index = [cupcakeArray objectAtIndex:1];

    [self displayInfo:index cupcake:cupcake];
    
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

-(IBAction)onBack:(id)sender
{
    [self dismissModalViewControllerAnimated:TRUE];
}

//function that checks the cupcake selected... the index.row that was selected.... This will be a switch case that will display selected cupcakes information.
-(void)displayInfo:(NSIndexPath *)index cupcake:(NSString *)cupcake
{
    cupcakeName.text = cupcake;
    
    switch (index.row) {
        case CANOLI:
            cupcakeText.text = @"Chocolate Chip Cake, topped with italian buttercream.";
            break;
        case BANANAFOSTER:
            cupcakeText.text = @"Banana cake, caramel filling, topped with rum buttercream.";
            break;
        case CHOCOLATEHAZLENUT:
            cupcakeText.text = @"Chocolate cake with nutella buttercream.";
            break;
        case REDVELVET:
            cupcakeText.text = @"Red velvet cake with cream cheese frosting.";
            break;
        case WHITECHOCOLATEMAC:
            cupcakeText.text = @"Vanilla cake, topped with white chocolate buttercream, toasted coconut, and macadamia nut.";
            break;
        case PEANUTBUTTERCUP:
            cupcakeText.text = @"Chocolate cake with peanut butter buttercream, and topped with a peanut butter cup.";
            break;
        case ALMONDJOY:
            cupcakeText.text = @"Chocolate cake with almond butter cream with coconut and almond.";
            break;
        case TURTLE:
            cupcakeText.text = @"Chocolate cake with chocolate buttercream, pecans, and caramel topping.";
            break;
        case TIRAMISU:
            cupcakeText.text = @"Vanilla cake, soaked in espresso, with italian buttercream sprinkled with cocoa powder.";
            break;
        case LIMONCELLO:
            cupcakeText.text = @"Vanilla cake, topped with lemon buttercream, and a lemon drop.";
            break;
        case SMORES:
            cupcakeText.text = @"Chocolate cake, marshmallow buttercream and topped with graham cracker crumbs.";
            break;
        case PEANUTBUTTERJELLY:
            cupcakeText.text = @"Vanilla cake, filled with jelly, topped with peanut butter buttercream.";
            break;
        case STRAWBERRYLEMONADE:
            cupcakeText.text = @"Strawberry cake with lemon buttercream.";
            break;
        case LUCKYCHARM:
            cupcakeText.text = @"Green velvet cake with green marshmallow buttercream topped with lucky charms.";
            break;
        case CARROT:
            cupcakeText.text = @"Carrot cake with cream cheese frosting.";
            break;
        case ZUCCHINI:
            cupcakeText.text = @"Zucchini spiced cake with cream cheese frosting.";
            break;
        case PUMPKINROLL:
            cupcakeText.text = @"Pumpkin cake with cream cheese frosting.";
            break;
        case CANDYCORN:
            cupcakeText.text = @"Vanilla cake with vanilla buttercream, and topped with candy corn.";
            break;
        case PECANPIE:
            cupcakeText.text = @"Vanilla Cinnamon cake, vanilla buttercream, topped with candied pecans.";
            break;
        case EGGNOG:
            cupcakeText.text = @"Vanilla egg nog cake with vanilla buttercream, topped with a cookie straw.";
            break;
        default:
            break;
    }
    
    
    
    
}

@end
