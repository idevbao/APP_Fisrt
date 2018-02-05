//
//  Home_Screen_Ctr.m
//  APP_Fisrt
//
//  Created by Trúc Phương >_< on 10/09/2017.
//  Copyright © 2017 iDev Bao. All rights reserved.
//

#import "Home_Screen_Ctr.h"
#import "View_Add_Screen.h"

@protocol protocol_view_Add;
@interface Home_Screen_Ctr ()

@end

@implementation Home_Screen_Ctr

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor darkGrayColor];
    View_Add_Screen*item_ScreenHOME = [[View_Add_Screen alloc] initWithScreen:self];
    item_ScreenHOME.backgroundColor = [UIColor redColor];
    [self.view addSubview:item_ScreenHOME];
    
#pragma mark - delegate
    item_ScreenHOME.delegate_Add =self;
#pragma mark - load data
    


    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}
#pragma mark -  method trong MyProtocol
-(void)tapGet_view_Content:(int)view{
    NSLog(@"@%d",view);
    
    
    
}
-(void)setdata_FOOD_:(NSString *)_dataFood_input_nameIMG title:(NSString *)_dataFood_input_nameTitle and:(int)so{
    
}
-(void)tapGet_btn_Content{
    NSLog(@"sdsdsd");
    
}





@end
