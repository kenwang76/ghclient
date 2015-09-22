//
//  MainViewController.m
//  GBClient
//
//  Created by Aardwolf.K on 9/22/15.
//  Copyright © 2015 Aardwolf.K. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    Tab1ViewController *tab1 = [[Tab1ViewController alloc]init];
    UINavigationController *nav = [[UINavigationController alloc]initWithRootViewController:tab1];
    nav.title = @"首页";
    nav.tabBarItem = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemHistory tag:0];
    Tab2ViewController *tab2 = [[Tab2ViewController alloc]init];
    tab2.tabBarItem = [[UITabBarItem alloc]initWithTabBarSystemItem:UITabBarSystemItemBookmarks tag:1];
    tab2.title = @"收藏";
    Tab3ViewController *tab3 = [[Tab3ViewController alloc]init];
    tab3.tabBarItem = [[UITabBarItem alloc]initWithTabBarSystemItem:UITabBarSystemItemSearch tag:2];
    tab3.title = @"搜索";
    tab3.tabBarItem.badgeValue = @"10";
    Tab4ViewController *tab4 = [[Tab4ViewController alloc]init];
    tab4.tabBarItem = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemTopRated tag:3];
    tab4.title = @"设置";
    Tab5ViewController *tab5 = [[Tab5ViewController alloc]init];
    tab5.tabBarItem = [[UITabBarItem alloc]initWithTabBarSystemItem:UITabBarSystemItemMore tag:4];
    tab5.title = @"帮助";
    
    NSArray *array = [[NSArray alloc]initWithObjects:nav, tab2, tab3, tab4 ,tab5, nil];
    
    //UITabBarController *tabs = [[UITabBarController alloc]init];
//    tabs.delegate = self;
//    tabs.viewControllers = array;
    self.delegate = self;
    self.viewControllers = array;
    
    //[self.view addSubview:tabs];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
