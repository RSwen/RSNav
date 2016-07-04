//
//  RSwenNav.h
//  透明导航验证
//
//  Created by 司文锐 on 16/5/16.
//  Copyright © 2016年 司文锐. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol RSwenNavDelegate <NSObject>

@optional
    -(void)RSwenNavrightBtnClicked;

@end

@interface RSwenNav : UIView

@property(nonatomic,weak)id<RSwenNavDelegate> delegate;

@property(nonatomic,strong)UIButton * backBtn;

@property(nonatomic,strong)UILabel  * titleLabel;

@property(nonatomic,strong)UIButton * rightBtn;


/**
 标题
 */
@property(nonatomic,copy)NSString * title;

/**
 右侧按钮标题
 */
@property(nonatomic,copy)NSString * rightTitle;

@end
