//
//  ZYThreeCell.m
//  ZYElegantDealCellLib_Example
//
//  Created by zhouyun on 2018/8/9.
//  Copyright © 2018年 SilenceZhou. All rights reserved.
//

#import "ZYThreeCell.h"



@interface ZYThreeCell () <ZYCellRefreshProtocol>
@property (nonatomic, strong) UILabel *label; /**< <#explain#> */

@end

@implementation ZYThreeCell

- (void)refreshUI:(id)amodel
{
    ZYPackageForCellModel *cellModel = amodel;
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        
        if (cellModel.cellHeight != 130) {
            cellModel.cellHeight = 130;
            if (cellModel.refreshBlock) {
                cellModel.refreshBlock();
            }
        }
    });

    
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
