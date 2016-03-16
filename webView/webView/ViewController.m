//
//  ViewController.m
//  webView
//
//  Created by GG on 16/2/24.
//  Copyright © 2016年 llbt. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIWebView *views = [[UIWebView alloc]init];
    views.frame = self.view.frame;
    [self.view addSubview:views];
    NSString *htmlString = @"<p>北京高德联讯科技有限公司 公告北京高德联讯科技有限公司 公告北京高德联讯科技有限公司 公告北京高德联讯科技有限公司 公告北京高德联讯科技有限公司 公告北京高德联讯科技有限公司 公告北京高德联讯科技有限公司 公告北京高德联讯科技有限公司 公告北京高德联讯科技有限公司 公告北京高德联讯科技有限公司 公告北京高德联讯科技有限公司 公告北京高德联讯科技有限公司 公告</p><p></p><p>北京高德联讯科技有限公司 公告北京高德联讯科技有限公司 公告北京高德联讯科技有限公司 公告北京高德联讯科技有限公司 公告北京高德联讯科技有限公司 公告北京高德联讯科技有限公司 公告北京高德联讯科技有限公司 公告北京高德联讯科技有限公司 公告北京高德联讯科技有限公司 公告北京高德联讯科技有限公司 公告北京高德联讯科技有限公司 公告北京高德联讯科技有限公司 公告</p>";
    
    NSString *jsString = [NSString stringWithFormat:@"<html> \n"
                          "<head> \n"
//                          "<link href=\"about.css\" rel=\"stylesheet\"> \n"
//                          "</style> \n"
                          "</head> \n"
                          "<body>%@</body> \n"
                          "</html>", htmlString];
    
    NSString *path = [[NSBundle mainBundle] bundlePath];
    NSURL *baseURL = [NSURL fileURLWithPath:path];
    
    [views loadHTMLString:jsString baseURL:baseURL];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
