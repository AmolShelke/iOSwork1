//
//  AppDelegate.m
//  Day2
//
//  Created by Student P_04 on 16/03/17.
//  Copyright © 2017 Felix. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    self.window=[[UIWindow alloc]initWithFrame:[[UIScreen mainScreen]bounds]];
    
    self.myViewController=[[UIViewController alloc]init];
    
    self.window.backgroundColor = [UIColor whiteColor];
    
    self.window.rootViewController=self.myViewController;
    
    self.firstText=[[UITextField alloc]initWithFrame:CGRectMake(20, 30, 200, 50)];
    
    self.firstText.backgroundColor=[UIColor lightTextColor];
    
    self.firstText.textAlignment=NSTextAlignmentCenter;
    
    self.firstText.font=[UIFont systemFontOfSize:20];
    
    self.firstText.placeholder=@"Enter first name";
    
    [self.firstText becomeFirstResponder];
    
    self.firstText.delegate=self;
    [self.myViewController.view addSubview:self.firstText];
    [self.window makeKeyAndVisible];
    
    self.secondText=[[UITextField alloc]initWithFrame:CGRectMake(20, 110, 200, 50)];
    
    self.secondText.backgroundColor=[UIColor lightTextColor];
    
    self.secondText.textAlignment=NSTextAlignmentCenter;
    
    self.secondText.font=[UIFont systemFontOfSize:20];
    
    self.secondText.placeholder=@"Copy First name here";
    
    
    self.secondText.delegate=self;
    
    [self.myViewController.view addSubview:self.secondText];
    
    
    return YES;
}

-(bool)textFieldShouldReturn:(UITextField *)textField
{
    NSLog(@"Hello %@",textField.text);
    self.secondText.text =textField.text;
    [self.secondText setEnabled:NO];
    [textField resignFirstResponder];
    [textField setEnabled:NO];
    return YES;
}

-(BOOL)textFieldShouldBeginEditing:(UITextField *)textField
{
    textField.backgroundColor=[UIColor yellowColor];
    return YES;
}

-(BOOL)textFieldShouldEndEditing:(UITextField *)textField
{
    textField.backgroundColor=[UIColor blueColor];
    return YES;
}

-(void)textFieldDidBeginEditing:(UITextField *)textField
{
    NSLog(@"Editing Started");
}

-(void)textFieldDidEndEditing:(UITextField *)textField
{
    NSLog(@"Editing ended");
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
