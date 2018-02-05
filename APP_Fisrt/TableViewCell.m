//
//  TableViewCell.m
//  MVCobC
//
//  Created by Trúc Phương >_< on 09/09/2017.
//  Copyright © 2017 iDev Bao. All rights reserved.
//

#import "TableViewCell.h"

@implementation TableViewCell
-(instancetype)init_cell_food:(UIViewController *)viewCtr{
    self = [super initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Save"];

#pragma custom Cell
    float padding =5;
    float height_row = (viewCtr.view.frame.size.height - viewCtr.navigationController.navigationBar.frame.size.height - viewCtr.tabBarController.tabBar.frame.size.height-2*padding)/5;
    
    float width_row = (viewCtr.view.frame.size.width-2*padding);
    view_table_food = [[UIView alloc]initWithFrame:CGRectMake(0, 0,width_row, height_row)];
    //    img_cell_food.contentMode  = UIViewContentModeScaleAspectFit;
    [self addSubview:view_table_food];
    view_table_food.backgroundColor =[UIColor whiteColor];
    
#pragma mark - img
    imgview_table_food = [[UIImageView alloc] initWithFrame:CGRectMake(padding, padding, ((2*width_row)/3), height_row)];
    [view_table_food addSubview:imgview_table_food];
    imgview_table_food.backgroundColor = [UIColor darkGrayColor];

    
#pragma mark - lbl
    lbl_table_food = [[UILabel alloc] initWithFrame:CGRectMake(padding+width_row*2/3,padding, width_row/3, height_row/4)];
    lbl_table_food.backgroundColor = [UIColor clearColor];
    lbl_table_food.textAlignment = NSTextAlignmentRight;
    lbl_table_food.font = [UIFont fontWithName:@"TrebuchetMS-Bold" size:15];
    lbl_table_food.textColor = [UIColor greenColor];
    [view_table_food addSubview:lbl_table_food];
    
    lbl_title_food = [[UILabel alloc] initWithFrame:CGRectMake(padding+width_row*2/3,padding+height_row/4, width_row/3, height_row/4)];
    lbl_title_food.backgroundColor = [UIColor clearColor];
    lbl_title_food.textAlignment = NSTextAlignmentRight;
    lbl_title_food.font = [UIFont fontWithName:@"TrebuchetMS-Bold" size:15];
    lbl_title_food.textColor = [UIColor greenColor];
    [view_table_food addSubview:lbl_title_food];

    lbl_money_food = [[UILabel alloc] initWithFrame:CGRectMake(width_row*2/3,height_row/2, width_row/3, height_row/4)];
    lbl_money_food.backgroundColor = [UIColor orangeColor];
    lbl_money_food.textAlignment = NSTextAlignmentRight;
    lbl_money_food.font = [UIFont fontWithName:@"TrebuchetMS-Bold" size:15];
    lbl_money_food.textColor = [UIColor greenColor];
    [view_table_food addSubview:lbl_money_food];
    
    

    lbl_Coutn = [[UILabel alloc] initWithFrame:CGRectMake(width_row*8/10,3*height_row/4, width_row/10, height_row/4)];
    lbl_Coutn.backgroundColor = [UIColor grayColor];
    lbl_Coutn.textAlignment = NSTextAlignmentRight;
    lbl_Coutn.font = [UIFont fontWithName:@"TrebuchetMS-Bold" size:15];
    lbl_Coutn.textColor = [UIColor blueColor];
    lbl_Coutn.hidden = YES;

    lbl_Coutn.text = 0;
    [view_table_food addSubview:lbl_Coutn];
    
#pragma mark -  add btn in view
    //btn add
    btn_table_food= [[UIButton alloc]initWithFrame:CGRectMake(width_row*8/10,3*height_row/4 , width_row/10, height_row/4) ];
    btn_table_food.backgroundColor = [UIColor greenColor];
    btn_table_food.hidden = NO;
    
    [view_table_food addSubview:btn_table_food];
    [btn_table_food addTarget:self action:@selector(setBTAdd:) forControlEvents:UIControlEventTouchDown];
    //btn -
    btn_tru= [[UIButton alloc]initWithFrame:CGRectMake(width_row*7/10,3*height_row/4 , width_row/10, height_row/4) ];
    btn_tru.backgroundColor = [UIColor redColor];
    btn_tru.hidden = YES;

    [view_table_food addSubview:btn_tru];
    [btn_tru addTarget:self action:@selector(setBTNTru:) forControlEvents:UIControlEventTouchUpInside];
    //btn +
    btn_cong= [[UIButton alloc]initWithFrame:CGRectMake(width_row*9/10,3*height_row/4 , width_row/10, height_row/4) ];
    btn_cong.backgroundColor = [UIColor redColor];
    btn_cong.hidden =YES;

    [view_table_food addSubview:btn_cong];
    [btn_cong addTarget:self action:@selector(setBTNCong:) forControlEvents:UIControlEventTouchDown];




    
    return self;
}


-(void)setBTAdd:(id)btn{
        _countSL = 0;
    _total = 0;
    if (_countSL == 0) {
        btn_table_food.hidden = YES;
        btn_tru.hidden = NO;
        btn_cong.hidden = NO;
        lbl_Coutn.hidden = NO;
    }
    _countSL ++;
   
    
    lbl_Coutn.text = [NSString stringWithFormat:@"%d",_countSL];
    NSLog(@"ten %@",lbl_table_food);
    NSLog(@"sl %d",_countSL);



    
}

-(void)setBTNTru:(id)btn{
    
    _countSL --;
    lbl_Coutn.text = [NSString stringWithFormat:@"%d",_countSL];
    if (_countSL < 1) {
        btn_table_food.hidden = NO;
        btn_tru.hidden = YES;
        btn_cong.hidden = YES;
        lbl_Coutn.hidden = YES;
    }
    lbl_Coutn.text = [NSString stringWithFormat:@"%d",_countSL];
    NSLog(@"ten %@",lbl_table_food);
    NSLog(@"sl %d",_countSL);

    _total = _money*_countSL;
    NSLog(@"total %f", _total);

}   
-(void)setBTNCong:(id)btn{
    if (_countSL < 1) {
        btn_table_food.hidden = NO;
        btn_tru.hidden = YES;
        btn_cong.hidden = YES;
        lbl_Coutn.hidden = YES;
    }
    _countSL ++;
    lbl_Coutn.text = [NSString stringWithFormat:@"%d",_countSL];
    NSLog(@"sl %d",_countSL);
    NSLog(@"ten %@",lbl_table_food);

    _total = _money*_countSL;
    NSLog(@"total %f", _total);
    
    
}
-(void)setData_Food:(DATA_FOOD*)data_food{
    imgview_table_food.image =[UIImage imageNamed:data_food.nameIMG];
    lbl_table_food.text = data_food.nameFood;
    lbl_money_food.text = [NSString stringWithFormat:@"$%@",data_food.nameMoney];
    lbl_title_food.text = data_food.nameTitle;
    _money = [data_food.nameMoney floatValue];
    NSLog(@"%f",_money);
}




- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
