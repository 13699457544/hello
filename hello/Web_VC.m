//
//  Web_VC.m
//  hello
//
//  Created by xuyunhua on 2017/10/27.
//  Copyright © 2017年 xuyunhua. All rights reserved.
//

#import "Web_VC.h"

@interface Web_VC ()

@end

@implementation Web_VC
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.delegate=self;
        __weak Web_VC* wk=self;
        _blc=^(NSString* txt){
            wk.content=txt;
        };
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    NSInteger width=[UIScreen mainScreen].bounds.size.width;
    NSInteger height=[UIScreen mainScreen].bounds.size.height;
    _tv=[[UITextView alloc] initWithFrame:CGRectMake(width/3, height/3, width/3, 30)];
    _tv_2=[[UITextView alloc] initWithFrame:CGRectMake(width/3, height/6, width/3, 30)];
    [self.view addSubview:_tv];
    [self.view addSubview:_tv_2];
    // Do any additional setup after loading the view.
}

-(void)viewDidAppear:(BOOL)animated{
    NSLog(@"Web_VC appear");
    [_tv setText:_content];
    [_tv_2 setText:_tv_2_text];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)transit:(NSString *)con{
    _tv_2_text=con;
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
