//
//  View_Add_Screen.h
//  MVCobC
//
//  Created by Trúc Phương >_< on 08/09/2017.
//  Copyright © 2017 iDev Bao. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol protocol_view_Add;
@protocol protocol_view_Add <NSObject>

@required
-(void)tapGet_view_Content:(int)view;
-(void)tapGet_btn_Content;
@end

@interface View_Add_Screen : UIView{
}

@property (nonatomic,strong)id<protocol_view_Add>delegate_Add;

-(instancetype)initWithScreen:(UIViewController*)ViewCtroller;

@end


