//
//  MainTabBarController.m
//  PWProject
//
//  Created by Frank on 16/4/13.
//  Copyright © 2016年 PY. All rights reserved.
//

#import "MainTabBarController.h"
#import "FirstViewController.h"
#import "SecondViewController.h"
#import "UIImageView+WebCache.h"

@interface MainTabBarController ()<UITabBarControllerDelegate>

@end

@implementation MainTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    FirstViewController * firstV = [[FirstViewController alloc]init];
    
    [self.tabBar setBackgroundColor:[UIColor blackColor]];
    [self addChildVc:firstV title:@"首页" image:@"FirstPage_02.png" selectedImage:@"FirstPage_01.png"];
    
    SecondViewController * secondV = [[SecondViewController alloc]init];
    [self addChildVc:secondV title:@"更多" image:@"SecondPage_02.png" selectedImage:@"SecondPage_01.png"];
    
    self.delegate = self;
    // Do any additional setup after loading the view.
}
/**
 *  添加一个子控制器
 *
 *  @param childVc       子控制器
 *  @param title         标题
 *  @param image         图片
 *  @param selectedImage 选中的图片
 */
- (void)addChildVc:(UIViewController *)childVc title:(NSString *)title image:(NSString *)image selectedImage:(NSString *)selectedImage
{
    // 设置子控制器的文字
    childVc.title = title; // 同时设置tabbar和navigationBar的文字
    
    // 设置子控制器的图片
    //    childVc.tabBarItem.image = [UIImage imageNamed:image];
    childVc.tabBarItem.image=[[UIImage imageNamed:image] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    
    childVc.tabBarItem.selectedImage = [[UIImage imageNamed:selectedImage]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    // 设置文字的样式
    NSMutableDictionary *textAttrs = [NSMutableDictionary dictionary];
    textAttrs[NSForegroundColorAttributeName] = RGB(123, 123, 123);
    NSMutableDictionary *selectTextAttrs = [NSMutableDictionary dictionary];
    selectTextAttrs[NSForegroundColorAttributeName] = [UIColor colorWithRed:0.36 green:0.8 blue:0.27 alpha:1];
    [childVc.tabBarItem setTitleTextAttributes:textAttrs forState:UIControlStateNormal];
    [childVc.tabBarItem setTitleTextAttributes:selectTextAttrs forState:UIControlStateSelected];
    
   
}


- (void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController
{
    if (self.selectedIndex == 1) {
    
    }
    
    if (self.selectedIndex == 2) {
        
    }
}

- (void)viewWillAppear:(BOOL)animated
{
    
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
