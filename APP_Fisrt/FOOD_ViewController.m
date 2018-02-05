//
//  FOOD_ViewController.m
//  MVCobC
//
//  Created by Trúc Phương >_< on 09/09/2017.
//  Copyright © 2017 iDev Bao. All rights reserved.
//
//  FOOD_ViewController.m
#import "FOOD_ViewController.h"
#import "CP_add_FOOD.h"
@protocol ptc_CP_add_dataFood;

@interface FOOD_ViewController (){
long countArr;
}
@end

@implementation FOOD_ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UITableView*table_ViewFood = [[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStylePlain];
    [self.view addSubview:table_ViewFood];
#pragma mark  disSelection cell
    table_ViewFood.allowsSelection = NO;
    
    table_ViewFood.delegate = self;
    table_ViewFood.dataSource = self;
    
    
    UIButton *btnCamera = [[UIButton alloc]init];
    [btnCamera setImage:[UIImage imageNamed:@"pacman.png"] forState:UIControlStateNormal];
    btnCamera.frame = CGRectMake(0, 0, 34, 34);
//    [btnCamera addTarget:self action:@selector(viewtest) forControlEvents:UIControlEventTouchDown];
    UIBarButtonItem *_camera = [[UIBarButtonItem alloc]initWithCustomView:btnCamera];
    NSArray* rightBarButtonItems  = [NSArray arrayWithObjects:_camera, nil];
    self.navigationItem.rightBarButtonItems = rightBarButtonItems;
   
    
    [self load_data_Food_to_Array];
    
//    input_arr = [[NSMutableArray alloc]init ];
//    data_food_load = [[DATA_FOOD alloc]init ];
//    countArr = 1;
//    [self setdata_FOOD_:@"dsdsd" title:@"hihih"];
    
    

}

#pragma mark - cac Func cua tableview thong qua delegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return input_arr.count;

}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    cell = (TableViewCell*)[tableView dequeueReusableCellWithIdentifier:@"Save"]; // da luu trong bo nho tam cung chua?

    if (cell==nil) {
        cell=[[TableViewCell alloc]init_cell_food:self ];
    }
    // truyen data vao tung row 1-1
    [cell setData_Food:[input_arr objectAtIndex:indexPath.row]];
    return cell;
}
#pragma height row cell

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    CGFloat height_row = (self.view.frame.size.height- self.navigationController.navigationBar.frame.size.height-self.tabBarController.tabBar.frame.size.height)/5;
    return height_row;
}

#pragma mark - su dung ham ben cp_add
-(void)setdata_FOOD_:(NSString *)_dataFood_input_nameIMG title:(NSString *)_dataFood_input_nameTitle{

    
}

#pragma mark - func load dữ liệu vào class My_cell_infoData -> tạo số row luôn -> Run hàm
-(void)load_data_Food_to_Array{
    
    input_arr = [[NSMutableArray alloc]init];
    data_food_load = [[DATA_FOOD alloc] init];
   
    
    data_food_load.nameIMG =@"Coupon.png";
    data_food_load.nameTitle =@"English";
    data_food_load.nameMoney = @"3.9";
    data_food_load.nameFood = @"Vietnamese";
    [input_arr addObject:data_food_load];
    
    data_food_load = [[DATA_FOOD alloc] init];
    data_food_load.nameIMG =@"Coupon.png";
    data_food_load.nameTitle =@"English coffee";
    data_food_load.nameMoney = @"0.9";
    data_food_load.nameFood = @"Vietnamese ca phe";
    [input_arr addObject:data_food_load];
    
    data_food_load = [[DATA_FOOD alloc] init];
    data_food_load.nameIMG =@"Coupon.png";
    data_food_load.nameTitle =@"English rice";
    data_food_load.nameMoney = @"9";
    data_food_load.nameFood = @"Vietnamese com";
    [input_arr addObject:data_food_load];
    
    
    for (int i = 0; i< input_arr.count; i++) {
        NSLog(@"%@",input_arr[i]);
    }
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end
