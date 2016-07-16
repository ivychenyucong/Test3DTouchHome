//
//  AppDelegate.m
//  Test3DTouchHome
//
//  Created by Ivy on 16/3/18.
//  Copyright © 2016年 Ivy. All rights reserved.
//

#import "AppDelegate.h"
#import "IvyViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


-(void) addDynamicIcon{
    UIApplicationShortcutIcon * icon = [UIApplicationShortcutIcon iconWithType:UIApplicationShortcutIconTypePlay];
    NSDictionary * userInfo = @{@"key1":@"value1", @"key2":@"value2"};
    
    UIApplicationShortcutItem * item = [[UIApplicationShortcutItem alloc] initWithType:@"ivy3" localizedTitle:@"ivy3" localizedSubtitle:@"ivy3 subtitle" icon:icon userInfo:userInfo];
    
    [UIApplication sharedApplication].shortcutItems = @[item];
    
}

-(void) application:(UIApplication *)application performActionForShortcutItem:(UIApplicationShortcutItem *)shortcutItem completionHandler:(void (^)(BOOL))completionHandler{
    
    //判断的条件可以是localizedTitle或者type或者userinfo
    if ([shortcutItem.localizedTitle isEqualToString:@"title 1"]) {
        //self.window.rootViewController.view.backgroundColor = [UIColor redColor];
        
        IvyViewController* vc = [[IvyViewController alloc] init];

        [((UINavigationController*)(self.window.rootViewController)) pushViewController:vc animated:YES];
        
    }
    if ([shortcutItem.localizedTitle isEqualToString:@"title 2"]) {
        //注意一定搞清楚自己的项目的层次结构啊.到底谁是rootViewController,我这里的rootViewController是那个UINavigationController啊.大家有可能是UITabbarViewController或者别的
        [((UINavigationController*)(self.window.rootViewController)) viewControllers].firstObject
        .view.backgroundColor = [UIColor yellowColor];
    }
    if ([shortcutItem.localizedTitle isEqualToString:@"ivy3"]) {
        [((UINavigationController*)(self.window.rootViewController)) viewControllers].firstObject
        .view.backgroundColor= [UIColor grayColor];
    }
    
    //文档让我们要调用这个handler
    completionHandler(YES);
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    [self addDynamicIcon];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
