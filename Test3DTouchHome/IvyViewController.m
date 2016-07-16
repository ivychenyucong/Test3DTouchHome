//
//  IvyViewController.m
//  Test3DTouchHome
//
//  Created by IvyChen on 7/15/16.
//  Copyright © 2016 Ivy. All rights reserved.
//

#import "IvyViewController.h"

@interface IvyViewController ()

@end

@implementation IvyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [self addDynamicIcon];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void) addDynamicIcon{
    UIApplicationShortcutIcon * icon = [UIApplicationShortcutIcon iconWithType:UIApplicationShortcutIconTypePlay];
    NSDictionary * userInfo = @{@"key1":@"value1", @"key2":@"value2"};
    
    UIApplicationShortcutItem * item = [[UIApplicationShortcutItem alloc] initWithType:@"ivy3" localizedTitle:@"ivy3" localizedSubtitle:@"ivy3 subtitle" icon:icon userInfo:userInfo];
    
    [UIApplication sharedApplication].shortcutItems = @[item];
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
