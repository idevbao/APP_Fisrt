//
//  CP_add_FOOD.m
//  APP_Fisrt
//
//  Created by Trúc Phương >_< on 10/09/2017.
//  Copyright © 2017 iDev Bao. All rights reserved.
//
//  CP_add_FOOD.m

#import "CP_add_FOOD.h"
#import "FOOD_ViewController.h"

@class FOOD_ViewController;
@interface CP_add_FOOD ()

@end

@implementation CP_add_FOOD

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSLog(@"cp add food");
    text_inPut_nameIMG = [[UITextField alloc]initWithFrame:CGRectMake(self.view.frame.size.width/3, self.view.frame.size.height/3,self.view.frame.size.width/3, 50) ];
    text_inPut_nameIMG.backgroundColor = [UIColor grayColor];
    text_inPut_nameTitle = [[UITextField alloc]initWithFrame:CGRectMake(self.view.frame.size.width/3,2*self.view.frame.size.height/3,self.view.frame.size.width/3, 50) ];
    text_inPut_nameTitle.backgroundColor = [UIColor grayColor];
    text_inPut_nameIMG.delegate = self;
    text_inPut_nameTitle.delegate = self;
    
    btn_input = [[UIButton alloc]initWithFrame:CGRectMake(self.view.frame.size.width/3,self.view.frame.size.height -self.navigationController.navigationBar.frame.size.height-50 , self.view.frame.size.width/3, 50) ];
    btn_input.backgroundColor = [UIColor orangeColor];
    
    [btn_input addTarget:self action:@selector(BTN_setdata_FOOD:) forControlEvents:UIControlEventTouchDown];
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self.view addSubview:text_inPut_nameIMG];
    [self.view addSubview:btn_input];
    [self.view addSubview:text_inPut_nameTitle];
    text_inPut_nameIMG.text= @"input Name IMG";
    text_inPut_nameTitle.text= @"input Title";
    // tao 1 mang_dataFood_input_nameTitle

    text_inPut_nameIMG.keyboardType = UIKeyboardTypeDefault;
}
- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    return YES;
    
}

-(void)BTN_setdata_FOOD:(id)btn_data{
    NSLog(@"Cp-Food");
    [_delegate_data_cp setdata_FOOD_:text_inPut_nameIMG.text title:text_inPut_nameTitle.text];

 
}




 #pragma mark - Navigation


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
