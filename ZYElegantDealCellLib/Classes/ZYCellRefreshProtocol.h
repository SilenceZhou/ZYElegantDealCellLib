//
//  ZYCellRefreshProtocol.h
//  Nongfadai
//
//  Created by SilenceZhou on 2018/7/30.
//  Copyright © 2018年 SilenceZhou. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


/**
 用协议的而不用父类：
 1.协议无侵入,可实现可不实现;
 2.便于后续拓展
 */
@protocol ZYCellRefreshProtocol <NSObject>

@optional


/**
 刷新Cell数据
 
 @param model model description
 */
- (void)refreshUI:(id)amodel;


/**
 获取Cell高度（思考下如果一部计算高度如何做？）
 @param model model 有涉及到cell的高度就用，没有的话直接返回一个固定的值
 @return 高度
 */
+ (double)cellHeight:(id)model;




@end
