//
//  AppDelegate.h
//  Day2
//
//  Created by Student P_04 on 16/03/17.
//  Copyright © 2017 Felix. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate,
UITextFieldDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) UITextField *firstText;
@property (strong, nonatomic) UITextField *secondText;
@property (strong, nonatomic)UIViewController *myViewController;

@end

