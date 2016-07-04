

//
//  OneViewController.m
//  透明导航验证
//
//  Created by 司文锐 on 16/5/16.
//  Copyright © 2016年 司文锐. All rights reserved.
//

#import "OneViewController.h"
#import "RSwenNav.h"
@interface OneViewController ()<RSwenNavDelegate>

@end

@implementation OneViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationController.navigationBarHidden=YES;
    self.view.backgroundColor=[UIColor lightGrayColor];
    [self createScrollView];
    [self createNav];
    // Do any additional setup after loading the view.
}

-(void)createScrollView{
    UIScrollView * scrollView=[[UIScrollView alloc]initWithFrame:self.view.bounds];
    scrollView.backgroundColor=[UIColor redColor];
    scrollView.contentSize=CGSizeMake(self.view.bounds.size.width, self.view.bounds.size.height*3);
    UIView * blackView=[[UIView alloc]initWithFrame:self.view.bounds];
    blackView.backgroundColor=[UIColor blackColor];
    [scrollView addSubview:blackView];
    [self.view addSubview:scrollView];
    
}
//自定义模糊度导航
-(void)createNav{
   RSwenNav * nav= [[RSwenNav alloc]initWithFrame:CGRectMake(0, 0,[UIScreen mainScreen].bounds.size.width , 64)];
    nav.delegate=self;
    [self.view addSubview:nav];
    
}

-(void)RSwenNavrightBtnClicked{
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
