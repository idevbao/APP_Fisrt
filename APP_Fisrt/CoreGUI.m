//
//  CoreGUI.m
//  APP_Fisrt
//
//  Created by Trúc Phương >_< on 10/09/2017.
//  Copyright © 2017 iDev Bao. All rights reserved.
//

#import "CoreGUI.h"



@implementation CoreGUI

-(instancetype)initWithCGUI:(UIWindow*)window_init{
    self=[super init];
    _window=window_init;
    
    return self;
}
-(void)RunWindow{
    
#pragma mark - SC_HO ban xemME
    Home_Screen_Ctr*SC_Home = [[Home_Screen_Ctr alloc]init];
    SC_Home.title = @"Home";
    UINavigationController*navi_Home=[[UINavigationController alloc] initWithRootViewController:SC_Home];

    
//    [navi_Home pushViewController:SC_Home animated:YES];

    
#pragma mark - SC_FOOD
    FOOD_ViewController*SC_Food = [[FOOD_ViewController alloc]init];
    SC_Food.title = @"sc_food";
    UINavigationController*navi_Food = [[UINavigationController alloc]initWithRootViewController:SC_Food];
//    [navi_Food pushViewController:SC_Food animated:YES];
    
    
#pragma mark - input_ITEM_FOOD
    CP_add_FOOD *input_Food = [[CP_add_FOOD alloc]init];
    input_Food.title = @"input";
    input_Food.delegate_data_cp = SC_Food;
        
    UINavigationController*input_navi = [[UINavigationController alloc]initWithRootViewController:input_Food];
//    [input_navi pushViewController:input_Food animated:YES];


#pragma mark - Arr tabbar
    NSArray*arr_tab3 = [[NSArray alloc] initWithObjects:navi_Home,navi_Food,input_navi, nil];
    UITabBarController*Tab3_ctr = [[UITabBarController alloc]init ];
    Tab3_ctr.viewControllers = arr_tab3;
    _window.rootViewController = Tab3_ctr;
    
    
    
}

@end
