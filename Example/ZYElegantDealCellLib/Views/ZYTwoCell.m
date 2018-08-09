//
//  ZYTwoCell.m
//  ZYElegantDealCellLib_Example
//
//  Created by zhouyun on 2018/8/9.
//  Copyright © 2018年 SilenceZhou. All rights reserved.
//

#import "ZYTwoCell.h"


@interface ZYTwoCell () <ZYCellRefreshProtocol>
@property (nonatomic, strong) UILabel *label; /**< <#explain#> */

@end

@implementation ZYTwoCell

- (void)refreshUI:(id)amodel
{
    
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
    label.text = [NSString stringWithFormat:@"我是 -->%@", NSStringFromClass([self class])];
    label.textColor = [UIColor randomColor];
    label.backgroundColor = [UIColor randomColor];
    self.label = label;
    [self.contentView addSubview:self.label];
    
    self.contentView.backgroundColor = self.backgroundColor = [UIColor randomColor];
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    
    self.label.frame = self.contentView.bounds;
}
@end
