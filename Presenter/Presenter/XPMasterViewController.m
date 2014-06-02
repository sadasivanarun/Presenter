//
//  XPMasterViewController.m
//  Fieldmax
//
//  Created by Sadasivan Arun on 4/21/14.
//  Copyright (c) 2014 Experion. All rights reserved.
//

#import "XPMasterViewController.h"

#define SIDEVIEW_INITIALRECT CGRectMake(0,0,320,1024);
#define SIDEVIEW_FINALRECT CGRectMake(0,0,320,1024);

@interface XPMasterViewController ()
{
    NSUserDefaults *userDefault;
    
}


@end

@implementation XPMasterViewController

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
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    //Set up the color of navigation bar.
    [[UINavigationBar appearance] setBarTintColor:[UIColor colorWithRed:209.0/255.0 green:238.0/255.0 blue:252.0/255.0 alpha:1.0]];
    [[UINavigationBar appearance] setTintColor:[UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:1.0]];
    [[UINavigationBar appearance] setTitleTextAttributes:
    [NSDictionary dictionaryWithObjectsAndKeys:
      [UIColor whiteColor], NSForegroundColorAttributeName,
      [UIFont fontWithName:@"Bebas Neue" size:42.0], NSFontAttributeName,nil]];
    [[UINavigationBar appearance] setTitleVerticalPositionAdjustment:6.0 forBarMetrics:UIBarMetricsDefault];
    
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)addTitle:(NSString *)titleName
{
    [self.navigationItem setTitle:titleName];
}



@end