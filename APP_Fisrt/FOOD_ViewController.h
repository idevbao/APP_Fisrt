//
//  FOOD_ViewController.h
//  MVCobC
//
//  Created by Trúc Phương >_< on 09/09/2017.
//  Copyright © 2017 iDev Bao. All rights reserved.
//
//  FOOD_ViewController.h
#import <UIKit/UIKit.h>
#import "TableViewCell.h"
#import "CP_add_FOOD.h"
@protocol ptc_CP_add_dataFood;

@interface FOOD_ViewController : UIViewController <UITableViewDelegate,UITableViewDataSource,ptc_CP_add_dataFood >
{
    TableViewCell*cell;
    NSMutableArray *input_arr;
    DATA_FOOD*data_food_load;

    
    
    
}

@end
