//
//  ZYViewModel.m
//  ZYOptimizeTableView_Example
//
//  Created by SilenceZhou on 2018/8/9.
//  Copyright © 2018年 SilenceZhou. All rights reserved.
//

#import "ZYViewModel.h"


@interface ZYViewModel ()
@property (nonatomic, strong, readwrite) NSArray *dataSource;
@end


@implementation ZYViewModel


- (void)dealData:(id)model
{
    
    NSMutableArray * array = [NSMutableArray array];
    
    
    // 1.
    [array addObject:[ZYPackageForCellModel cellModelWithClass:[ZYTestOneCell class]
                                                         model:nil
                                                cellIdentifier:nil
                                                    cellHeight:40
                                                     routerUrl:nil]];
    
    
    
    // 2.
    [array addObject:[ZYPackageForCellModel cellModelWithClass:[ZYTestTwoCell class]
                                                         model:nil
                                                cellIdentifier:nil
                                                    cellHeight:89
                                                     routerUrl:nil]];
    // 3.
    [array addObject:[ZYPackageForCellModel cellModelWithClass:[ZYTestThreeCell class]
                                                         model:nil
                                                cellIdentifier:nil
                                                    cellHeight:100
                                                     routerUrl:nil]];
    // 4.
    [array addObject:[ZYPackageForCellModel cellModelWithClass:[ZYTestFourCell class]
                                                         model:nil
                                                cellIdentifier:nil
                                                    cellHeight:80
                                                     routerUrl:nil]];
    
    self.dataSource = array;
    
    
    
}


- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    ZYPackageForCellModel *cellModel = [self.dataSource objectAtIndex:indexPath.row];
    Class cellClass = cellModel.aClass;
    NSString *cellIdentifier = cellModel.cellIdentifier;
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (!cell) {
        cell =  [(UITableViewCell *)[cellClass alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    
    if ([cell respondsToSelector:@selector(refreshUI:)]) {
        [cell performSelector:@selector(refreshUI:) withObject:cellModel];
    }
    
    
    return cell;
    
    
    
    
    return  [UITableViewCell new];
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataSource.count;
}

@end
