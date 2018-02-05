//
//  View_Add_Screen.m
//  MVCobC
//
//  Created by Trúc Phương >_< on 08/09/2017.
//  Copyright © 2017 iDev Bao. All rights reserved.
//

#import "View_Add_Screen.h"

@implementation View_Add_Screen
-(instancetype)initWithScreen:(UIViewController*)ViewCtroller{
    self = [super initWithFrame:CGRectMake(ViewCtroller.view.frame.size.width/3, ViewCtroller.view.frame.size.height/3, ViewCtroller.view.frame.size.width/3, ViewCtroller.view.frame.size.height/3)];
    
    UITapGestureRecognizer *tap_View = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tapGet_view:) ];
    
    [self addGestureRecognizer:tap_View];
    
    UIButton*btn_add = [[UIButton alloc]initWithFrame:CGRectMake(0, self.frame.size.height*7/9, self.frame.size.width,self.frame.size.height*2/9 ) ];
    btn_add.backgroundColor = [UIColor grayColor];
    [self addSubview:btn_add];
    
    [btn_add addTarget:self action:@selector(tapGet_btn_view:) forControlEvents:UIControlEventTouchDown];

    
    return self;
}
-(void)tapGet_view:(id)view{

    
    [_delegate_Add tapGet_view_Content:20];
    // chuyen du lieu vao ham tapget thong qua DELRGATE de chia se duu lieu
}
-(void)tapGet_btn_view:(id)btn_data{
        [_delegate_Add tapGet_btn_Content];
}
@end
