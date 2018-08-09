//
//  ZYViewModel.m
//  ZYElegantDealCellLib_Example
//
//  Created by zhouyun on 2018/8/9.
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
    
    
    [array addObject:[ZYPackageForCellModel cellModelWithClass:[ZYOneCell class]
                                                          model:nil
                                                 cellIdentifier:nil
                                                     cellHeight:49
                                                      routerUrl:nil]];
    
    
    [array addObject:[ZYPackageForCellModel cellModelWithClass:[ZYTwoCell class]
                                                          model:nil
                                                 cellIdentifier:nil
                                                     cellHeight:39
                                                      routerUrl:nil]];
    
    for (NSInteger i = 1;  i<= 4; i++) {
        
        ZYPackageForCellModel *cellModel = [ZYPackageForCellModel cellModelWithClass:[ZYThreeCell class]
                                                                               model:nil
                                                                      cellIdentifier:nil
                                                                          cellHeight:30 * i
                                                                           routerUrl:nil];
        
        cellModel.isNeedRefreshCellHeight = YES;
        
        
        [array addObject:cellModel];
    }
    
    
    [array addObject:[ZYPackageForCellModel cellModelWithClass:[ZYFourCell class]
                                                          model:nil
                                                 cellIdentifier:nil
                                                     cellHeight:50
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
    
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataSource.count;
}

@end
