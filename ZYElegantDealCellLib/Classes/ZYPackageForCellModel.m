//
//  ZYPackageForCellModel.m
//  Nongfadai
//
//  Created by SilenceZhou on 2018/7/30.
//  Copyright © 2018年 SilenceZhou. All rights reserved.
//

#import "ZYPackageForCellModel.h"

@implementation ZYPackageForCellModel

+ (instancetype)cellModelWithClass:(Class)aClass
                             model:(id)model
                    cellIdentifier:(NSString *)cellIdentifier
                        cellHeight:(CGFloat)cellHeight
                         routerUrl:(NSString *)routerUrl
{
    
    return [self cellModelWithClass:aClass
                              model:model
                     cellIdentifier:cellIdentifier
                         cellHeight:cellHeight
                           mobclick:nil
                          routerUrl:routerUrl
                       routerParams:nil];
}




+ (instancetype)cellModelWithClass:(Class)aClass
                             model:(id)model
                    cellIdentifier:(NSString *)cellIdentifier
                        cellHeight:(CGFloat)cellHeight
                          mobclick:(id)mobclick
                         routerUrl:(NSString *)routerUrl
                      routerParams:(NSDictionary *)routerParams
{
    return [self cellModelWithClass:aClass
                              model:model
                     cellIdentifier:cellIdentifier
                         cellHeight:cellHeight
                           mobclick:mobclick
                         attributes:nil
                          routerUrl:routerUrl
                       routerParams:routerParams];
}



+ (instancetype)cellModelWithClass:(Class)aClass
                             model:(id)model
                    cellIdentifier:(NSString *)cellIdentifier
                        cellHeight:(CGFloat)cellHeight
                          mobclick:(NSString *)mobclick
                        attributes:(NSDictionary *)attributes
                         routerUrl:(NSString *)routerUrl
                      routerParams:(NSDictionary *)routerParams
{
    ZYPackageForCellModel *cellModel = [ZYPackageForCellModel new];
    cellModel.aClass  = aClass;
    cellModel.model = model ? model : nil;
    
    // cellReuseID
    if (cellIdentifier && cellIdentifier.length) {
        cellModel.cellIdentifier = cellIdentifier;
    } else {
        cellModel.cellIdentifier = NSStringFromClass(aClass) ;
    }
    
    cellModel.cellHeight = cellHeight > 0 ?  cellHeight : 0.0f;
    cellModel.mobclick = mobclick ?  mobclick : nil;
    cellModel.attributes = attributes? attributes : nil;
    cellModel.routerUrl = (routerUrl && routerUrl.length) ? routerUrl : nil;
    cellModel.routerParams = routerParams ? routerParams : nil;
    
    return cellModel;
}

@end
