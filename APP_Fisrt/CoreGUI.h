//
//  CoreGUI.h
//  APP_Fisrt
//
//  Created by Trúc Phương >_< on 10/09/2017.
//  Copyright © 2017 iDev Bao. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AppDelegate.h"
#import "Home_Screen_Ctr.h"
#import "FOOD_ViewController.h"
#import "CP_add_FOOD.h"
#import "UITabBar+Category.h"

@interface CoreGUI : NSObject{
    UIWindow*_window;
    CoreGUI*CGUI_VCtr;
}
-(instancetype)initWithCGUI:(UIWindow*)window_init;

-(void)RunWindow;

@end
