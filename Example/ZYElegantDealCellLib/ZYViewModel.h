//
//  ZYViewModel.h
//  ZYOptimizeTableView_Example
//
//  Created by SilenceZhou on 2018/8/9.
//  Copyright © 2018年 SilenceZhou. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ZYViewModel : NSObject<UITableViewDataSource>


@property (nonatomic, strong, readonly) NSArray *dataSource;

/**
 组装数据 
 */
- (void)dealData:(id)model;
@end
