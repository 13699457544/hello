//
//  AppDelegate.m
//  hello
//
//  Created by xuyunhua on 2017/10/26.
//  Copyright © 2017年 xuyunhua. All rights reserved.
//

#import "AppDelegate.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window=[[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    [self.window makeKeyWindow];
    tab_01* _tab_01=[[tab_01 alloc] init];
    _tab_01.title=@"视图01";
    tab_02* _tab_02=[[tab_02 alloc] init];
    _tab_02.title=@"视图02";
    tab_03* _tab_03=[[tab_03 alloc] init];
    _tab_03.title=@"视图03";
    
    _tab_01.view.backgroundColor=[UIColor redColor];
    _tab_02.view.backgroundColor=[UIColor greenColor];
    _tab_03.view.backgroundColor=[UIColor orangeColor];
    UITabBarController* tab_ctr=[[UITabBarController alloc] init];
    NSArray* ctr_arry=[NSArray arrayWithObjects:_tab_01,_tab_02,_tab_03,nil];
    tab_ctr.viewControllers=ctr_arry;
    
    self.window.rootViewController=tab_ctr;
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
