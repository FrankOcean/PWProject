//
//  WebViewController.m
//  PWProject
//
//  Created by Frank on 16/4/13.
//  Copyright © 2016年 PY. All rights reserved.
//

#import "WebViewController.h"
#import "BaseHttpClient.h"

@interface WebViewController ()

@end

@implementation WebViewController
@synthesize url, vcTitle;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.navigationController setNavigationBarHidden:NO];
    self.navigationController.title = vcTitle;

    [self createWebView];
    // Do any additional setup after loading the view from its nib.
}

- (void)createWebView
{
    UIWebView * webViewContent = [[UIWebView alloc]initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEITHT)];
    NSURLRequest * request = [NSURLRequest requestWithURL:[NSURL URLWithString:@"https://www.baidu.com"]];
    [webViewContent loadRequest:request];
    
    [webViewContent stringByEvaluatingJavaScriptFromString:@"document.body.style.zoom=0.5"];
    [webViewContent setScalesPageToFit:YES];
    [self.view addSubview:webViewContent];
    
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
