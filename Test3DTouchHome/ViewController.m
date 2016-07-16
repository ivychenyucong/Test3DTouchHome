//
//  ViewController.m
//  Test3DTouchHome
//
//  Created by Ivy on 16/3/18.
//  Copyright © 2016年 Ivy. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
   // [self addDynamicIcon];
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
@end
