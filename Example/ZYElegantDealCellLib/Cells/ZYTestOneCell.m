//
//  ZYTestOneCell.m
//  ZYOptimizeTableView_Example
//
//  Created by SilenceZhou on 2018/8/9.
//  Copyright © 2018年 SilenceZhou. All rights reserved.
//

#import "ZYTestOneCell.h"

@interface ZYTestOneCell ()//<ZYCellRefreshProtocol>

@end


@implementation ZYTestOneCell


- (void)refreshUI:(id)amodel
{
    NSLog(@"ZYTestOneCell 刷新");
    
    ZYPackageForCellModel *cellModel = amodel;
    
    
    // 图片加载完成或者别的计算完成 更新一下cellModel的cellHeight值，然后进行刷新tableView
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        
        if (cellModel.cellHeight != 250) {
            
            cellModel.cellHeight = 250;
            if (cellModel.refreshBlock) {
                cellModel.refreshBlock();
            }
        }
    });
    
    
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
