//
//  ViewController.m
//  WatchDemo1
//
//  Created by Victor on 15-1-28.
//  Copyright (c) 2015年 Victor. All rights reserved.
//

#import "ViewController.h"
#import "KINWebBrowserViewController.h"

@interface ViewController ()
//@property (nonatomic,strong) UINavigationController *webBrowserNavigationController;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.    
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
//    [self performSelector:@selector(showLandingPage) withObject:nil afterDelay:2.0];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)showLandingPage
{
    if (self.presentedViewController!=nil) {
        return;
    }
    UINavigationController* _webBrowserNavigationController = [KINWebBrowserViewController navigationControllerWithWebBrowser];
    [self presentViewController:_webBrowserNavigationController animated:YES completion:nil];
    
    KINWebBrowserViewController *webBrowser = [_webBrowserNavigationController rootWebBrowser];
    webBrowser.actionButtonHidden=YES;
    webBrowser.showsPageTitleInNavigationBar=YES;
    [webBrowser loadURLString:@"http://www.wqmobile.com"];
}

@end
