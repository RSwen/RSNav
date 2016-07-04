
//
//  RSwenNav.m
//  透明导航验证
//
//  Created by 司文锐 on 16/5/16.
//  Copyright © 2016年 司文锐. All rights reserved.
//
#define kScreenWidth  [[UIScreen mainScreen] bounds].size.width
#define kScreenHeight [[UIScreen mainScreen] bounds].size.height

#import "RSwenNav.h"

@implementation RSwenNav
{
     UIVisualEffectView *effectview;
}
-(instancetype)initWithFrame:(CGRect)frame{
    self=[super initWithFrame:frame];
    if (self) {
         UIBlurEffect *blur = [UIBlurEffect effectWithStyle:UIBlurEffectStyleLight];
        effectview = [[UIVisualEffectView alloc] initWithEffect:blur];
        effectview.frame=frame;
        [self addSubview:effectview];
        [self addSubviews];
    }
    return self;
}

//添加导航子视图
-(void)addSubviews{
    [self addSubview:self.backBtn];
    [self addSubview:self.titleLabel];
    [self addSubview:self.rightBtn];
    
}
-(UIButton *)backBtn{
    UIButton * btn=[UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame=CGRectMake(20, 20, 60, 44);
    [btn setTitle:@"返回" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(RSwenNavback) forControlEvents:UIControlEventTouchUpInside];
    return btn;
}

-(UILabel *)titleLabel{
    UILabel * lable=[[UILabel alloc]init];
    lable.font=[UIFont systemFontOfSize:17];
    lable.textAlignment=NSTextAlignmentCenter;
    lable.frame=CGRectMake(100, 20, kScreenWidth-200, 44);
    lable.text=@"我的主页";
    return lable;
}

-(UIButton *)rightBtn{
    UIButton * btn=[UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame=CGRectMake([UIScreen mainScreen].bounds.size.width-100, 20, 80, 44);
    [btn setTitle:@"保存" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(rightBtnClicked) forControlEvents:UIControlEventTouchUpInside];
    return btn;
}

#pragma 事件处理部分

//返回上个界面
-(void)RSwenNavback{
    //获取UIView的上层UIViewController
    id object = [self nextResponder];
    while (![object isKindOfClass:[UIViewController class]] &&
           
           object != nil) {
        
        object = [object nextResponder];
        
    }
    UIViewController *uc=(UIViewController*)object;
    
    [uc.navigationController popViewControllerAnimated:YES];
}

//右侧按钮被点击
-(void)rightBtnClicked{
    if ([_delegate respondsToSelector:@selector(RSwenNavrightBtnClicked)]) {
        [_delegate RSwenNavrightBtnClicked];
    }
}

@end
