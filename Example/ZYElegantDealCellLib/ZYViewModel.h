//
//  ZYViewModel.h
//  ZYElegantDealCellLib_Example
//
//  Created by zhouyun on 2018/8/9.
//  Copyright © 2018年 SilenceZhou. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ZYViewModel : NSObject<UITableViewDataSource>

@property (nonatomic, strong, readonly) NSArray *dataSource;


- (void)dealData:(id)model;
@end
