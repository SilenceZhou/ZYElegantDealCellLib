//
//  ZYFourCell.m
//  ZYElegantDealCellLib_Example
//
//  Created by zhouyun on 2018/8/9.
//  Copyright © 2018年 SilenceZhou. All rights reserved.
//

#import "ZYFourCell.h"

@interface ZYFourCell () <ZYCellRefreshProtocol>
@property (nonatomic, strong) UILabel *label; /**< <#explain#> */

@end

@implementation ZYFourCell

- (void)refreshUI:(id)amodel
{
    
}


- (void)layoutSubviews
{
    [super layoutSubviews];
    
    self.label.frame = self.contentView.bounds;
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self setupUI];
        self.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    return self;
}

- (void)setupUI
{
    UILabel *label  = [[UILabel alloc] init];
    self.label = label;
    label.text = [NSString stringWithFormat:@"我是 -->%@", NSStringFromClass([self class])];
    label.textColor = [UIColor randomColor];
    label.backgroundColor = [UIColor randomColor];
    [self.contentView addSubview:self.label];
    
    self.contentView.backgroundColor = self.backgroundColor = [UIColor randomColor];
}
@end
