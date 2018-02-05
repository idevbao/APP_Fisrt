//
//  CP_add_FOOD.h
//  APP_Fisrt
//
//  Created by Trúc Phương >_< on 10/09/2017.
//  Copyright © 2017 iDev Bao. All rights reserved.
//
//  CP_add_FOOD.h
#import <UIKit/UIKit.h>


@class FOOD_ViewController;

@protocol ptc_CP_add_dataFood;
@protocol ptc_CP_add_dataFood <NSObject>

-(void)setdata_FOOD_:(NSString*)_dataFood_input_nameIMG title:(NSString*)_dataFood_input_nameTitle;


@end
@interface CP_add_FOOD : UIViewController <UITextFieldDelegate>
{
    
    UITextField*text_inPut_nameIMG;
    UITextField*text_inPut_nameTitle;
    UIButton*btn_input;

    
}
@property(nonatomic,weak)NSMutableArray*input_arr;
@property(nonatomic,weak)id<ptc_CP_add_dataFood>delegate_data_cp;
@end


