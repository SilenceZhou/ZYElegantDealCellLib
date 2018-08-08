//
//  ZYTestThreeCell.m
//  ZYOptimizeTableView_Example
//
//  Created by SilenceZhou on 2018/8/9.
//  Copyright © 2018年 SilenceZhou. All rights reserved.
//

#import "ZYTestThreeCell.h"


@interface ZYTestThreeCell ()//<ZYCellRefreshProtocol>
@end


@implementation ZYTestThreeCell



- (void)refreshUI:(id)amodel
{
    NSLog(@"ZYTestOneCell 刷新");
}




- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self setupUI];
    }
    return self;
}

- (void)setupUI
{
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(30, 0, 100, 50)];
    
    label.text = [NSString stringWithFormat:@"%@----haah", NSStringFromClass([self class])];
    label.textColor = [UIColor randomColor];
    [self.contentView addSubview:label];
    
    label.center = self.contentView.center;
    self.contentView.backgroundColor = self.backgroundColor = [UIColor randomColor];
}

@end
