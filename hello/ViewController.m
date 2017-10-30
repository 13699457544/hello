//
//  ViewController.m
//  hello
//
//  Created by xuyunhua on 2017/10/26.
//  Copyright © 2017年 xuyunhua. All rights reserved.
//

#import "ViewController.h"
#import "Web_VC.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UINavigationBar* bar=[[UINavigationBar alloc] initWithFrame:CGRectMake(0, 30, [UIScreen mainScreen].bounds.size.width, 50)];
    UINavigationItem* item=[[UINavigationItem alloc] initWithTitle:@"爱奇艺小程序"];
     UIBarButtonItem* _bar_btn=[[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemSearch target:self action:@selector(finish)];
    [item setRightBarButtonItem:_bar_btn];
    [bar setItems:[NSArray arrayWithObject:item]];
    [self.view addSubview:bar];
}
-(void)finish{
    Web_VC* web_vc=[[Web_VC alloc] init];
    web_vc.blc(@"hello world");
    if(web_vc.delegate)
        [web_vc.delegate transit:@"IQYIMIPROGRAM"];
    [self presentViewController:web_vc animated:true completion:^{
        NSLog(@"viewControl completion");
    }];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end
