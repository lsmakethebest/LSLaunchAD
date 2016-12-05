//
//  AppDelegate.m
//  LSLaunchAD
//
//  Created by 刘松 on 16/8/26.
//  Copyright © 2016年 liusong. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application
    didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

  [LSLaunchAD showWithWindow:self.window
                   countTime:5
       showCountTimeOfButton:YES
              showSkipButton:YES
              isFullScreenAD:NO
              localAdImgName:nil
                    imageURL:@"http://pic.yesky.com/uploadImages/2016/064/55/UWVJ44A8HXTX.jpg"
                  canClickAD:YES
                     aDBlock:^(BOOL clickAD) {

                       if (clickAD) {
                         NSLog(@"点击了广告");
                         UINavigationController *nav =
                             (UINavigationController *)
                                 self.window.rootViewController;
                         UIViewController *vc = [[UIViewController alloc] init];
                         vc.view.backgroundColor = [UIColor whiteColor];
                         vc.title = @"广告";
                         [nav pushViewController:vc animated:YES];
                       } else {
                         NSLog(@"完成倒计时或点击了跳转按钮");
                       }
                     }];
  return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
  // Sent when the application is about to move from active to inactive state.
  // This can occur for certain types of temporary interruptions (such as an
  // incoming phone call or SMS message) or when the user quits the application
  // and it begins the transition to the background state.
  // Use this method to pause ongoing tasks, disable timers, and throttle down
  // OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
  // Use this method to release shared resources, save user data, invalidate
  // timers, and store enough application state information to restore your
  // application to its current state in case it is terminated later.
  // If your application supports background execution, this method is called
  // instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
  // Called as part of the transition from the background to the inactive state;
  // here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
  // Restart any tasks that were paused (or not yet started) while the
  // application was inactive. If the application was previously in the
  // background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
  // Called when the application is about to terminate. Save data if
  // appropriate. See also applicationDidEnterBackground:.
}

@end
