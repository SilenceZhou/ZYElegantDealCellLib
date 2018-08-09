//
//  ZYViewController.m
//  ZYElegantDealCellLib
//
//  Created by SilenceZhou on 08/09/2018.
//  Copyright (c) 2018 SilenceZhou. All rights reserved.
//

#import "ZYViewController.h"

@interface ZYViewController () <UITableViewDelegate>
@property (nonatomic, strong) UITableView *tableView; /**< <#explain#> */
@property (nonatomic, strong) ZYViewModel *viewModel; /**< <#explain#> */
@end

@implementation ZYViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    [self.view addSubview:self.tableView];
    
    [self.viewModel dealData:nil];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    ZYPackageForCellModel *cellModel = [self.viewModel.dataSource objectAtIndex:indexPath.row];
    
    if (cellModel.isNeedRefreshCellHeight) {
        cellModel.refreshBlock = ^{
            // 刷新指定的cell
            [tableView reloadRowsAtIndexPaths:@[indexPath]
                             withRowAnimation:UITableViewRowAnimationFade];
        };
    }
    
    return cellModel.cellHeight;
}


- (ZYViewModel *)viewModel
{
    if (!_viewModel) {
        _viewModel = [[ZYViewModel alloc] init];
    }
    return _viewModel;
}


- (UITableView *)tableView
{
    if (!_tableView) {
        _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _tableView.delegate = self;
        _tableView.dataSource = self.viewModel;
        _tableView.tableFooterView = [UIView new];
    }
    return _tableView;
}


@end
