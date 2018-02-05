//
//  TableViewCell.h
//  MVCobC
//
//  Created by Trúc Phương >_< on 09/09/2017.
//  Copyright © 2017 iDev Bao. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DATA_FOOD.h"

@interface TableViewCell : UITableViewCell{
    UILabel*lbl_table_food;
    UILabel*lbl_title_food;
    
    UILabel*lbl_money_food;
    UIView*view_table_food;
    
    UIButton*btn_table_food;
    UIButton*btn_tru;
    UIButton*btn_cong;
    
    UILabel*lbl_Coutn;
    
    
    UIImageView*imgview_table_food;
}
@property (nonatomic,assign)int countSL;
@property (nonatomic,assign)float total;
@property (nonatomic,assign)float money;
-(instancetype)init_cell_food:(UIViewController*)viewCtr;
-(void)setData_Food:(DATA_FOOD*)data_food;
@end
