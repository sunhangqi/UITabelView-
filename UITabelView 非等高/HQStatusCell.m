//
//  HQStatusCell.m
//  UITabelView 非等高
//
//  Created by Macbook on 2017/4/30.
//  Copyright © 2017年 Macbook. All rights reserved.
//

#import "HQStatusCell.h"
#import "HQStatus.h"

@interface HQStatusCell ()
@property (weak, nonatomic) IBOutlet UIImageView *iconView;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *vipView;
@property (weak, nonatomic) IBOutlet UILabel *contentLabel;
@property (weak, nonatomic) IBOutlet UIImageView *pictureView;

@end



@implementation HQStatusCell

+ (instancetype)cellWithTableView:(UITableView *)tableView {
    static NSString *ID = @"status";
    HQStatusCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (cell == nil) {
        cell = [[[ NSBundle mainBundle] loadNibNamed:NSStringFromClass(self) owner:nil options:nil] lastObject];
        
    }
    return cell;
}

- (void)setStatus:(HQStatus *)status {
    _status = status;
    self.nameLabel.text = status.name;
    self.iconView.image = [UIImage imageNamed:status.icon];
    self.pictureView.image = [UIImage imageNamed:status.picture];
    self.contentLabel.text = status.text;
}

@end
