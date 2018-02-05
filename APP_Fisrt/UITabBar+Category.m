//
//  UITabBar+Category.m
//  MVCobC
//
//  Created by Trúc Phương >_< on 09/09/2017.
//  Copyright © 2017 iDev Bao. All rights reserved.
//

#import "UITabBar+Category.h"

@implementation UITabBar (Category)
int kTabBarHeight = 36;
-(CGSize)sizeThatFits:(CGSize)size
{
    CGSize sizeThatFits = [super sizeThatFits:size];
    sizeThatFits.height = kTabBarHeight;
    
    return sizeThatFits;
}
@end
