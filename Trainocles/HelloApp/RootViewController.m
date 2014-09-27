//
//  RootViewController.m
//  HelloApp
//
//  Created by liushuai on 14-9-27.
//  Copyright (c) 2014年 Liushuai. All rights reserved.
//

#import "RootViewController.h"
#import "DragView.h"
@interface RootViewController ()
  
@end

CGPoint randomPoint()
{
    return CGPointMake(random()%256, random()%396);
}

@implementation RootViewController
#define MAXFLOWERS 18
- (void)dealloc
{
    [_contentView release];
    [super dealloc];
}
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
    // Do any additional setup after loading the view.
}
- (void)loadView
{
    CGRect apprect = [[UIScreen mainScreen] applicationFrame];
    _contentView = [[UIView alloc]initWithFrame:apprect];
    _contentView.backgroundColor = [UIColor blackColor];
    self.view = _contentView;
    NSMutableArray *colors,*locs;
    colors = [[NSUserDefaults standardUserDefaults]objectForKey:@"colors"];
    locs = [[NSUserDefaults standardUserDefaults]objectForKey:@"locs"];
    
    for (int i=0; i<MAXFLOWERS; i++) {
        CGRect dragRect = CGRectMake(0.0f, 0.0f, 32.0f, 32.0f);
        dragRect.origin = randomPoint();
        if (locs&&[locs count]==MAXFLOWERS) {
            dragRect = CGRectFromString([locs objectAtIndex:i]);
        }
        DragView *dragger = [[DragView alloc]initWithFrame:dragRect];
        [dragger setUserInteractionEnabled:YES];
        
        UIColor *whichFlower = [@[[UIColor redColor],[UIColor blackColor],[UIColor whiteColor]]objectAtIndex:random()%3];
        if (colors&&[colors count]==MAXFLOWERS) {
            whichFlower = [colors objectAtIndex:i];
        }
        [dragger setBackgroundColor:whichFlower];
        [_contentView addSubview:dragger];
        [dragger release];
        
    }
}
- (void)updateDefaulte
{
    NSMutableArray *colors = [[NSMutableArray alloc]init];
    NSMutableArray *locs = [[NSMutableArray alloc]init];
    for (DragView *dv in [_contentView subviews]) {
        //[colors addObject:[dv backgroundColor]];
        [locs addObject:NSStringFromCGRect([dv frame])];
    }
    //[[NSUserDefaults standardUserDefaults] setValue:colors forKey:@"colors"];
    [[NSUserDefaults standardUserDefaults] setValue:locs forKey:@"locs"];
    [[NSUserDefaults standardUserDefaults] synchronize];
    NSLog(@"colors:%@",colors);
    NSLog(@"locs:%@",locs);
    [colors release];
    [locs release];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
