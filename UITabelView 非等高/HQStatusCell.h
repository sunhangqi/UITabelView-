//
//  HQStatusCell.h
//  UITabelView 非等高
//
//  Created by Macbook on 2017/4/30.
//  Copyright © 2017年 Macbook. All rights reserved.
//

#import <UIKit/UIKit.h>

@class HQStatus;

@interface HQStatusCell : UITableViewCell
+ (instancetype)cellWithTableView:(UITableView *)tableView;
@property (nonatomic, strong) HQStatus *status;
@end
