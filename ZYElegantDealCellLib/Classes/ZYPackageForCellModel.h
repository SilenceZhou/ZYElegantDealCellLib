//
//  ZYPackageForCellModel.h
//  Nongfadai
//
//  Created by SilenceZhou on 2018/7/30.
//  Copyright © 2018年 SilenceZhou. All rights reserved.
//


#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>




typedef void(^CellHeighCaculatedRefreshBlock)(void); /**< cell高度计算完成回调(刷新、或者做其他的) */


/**
 公用cell刷新model,可以直接用或者继承添加额外的属性
 */
@interface ZYPackageForCellModel : NSObject

@property (nonatomic, strong) Class aClass;               /**< Cell类型 */
@property (nonatomic, strong) id model;                   /**< Cell对应的Model: 可为字符串、自定义model、基本数据类型 */
@property (nonatomic, copy) NSString *cellIdentifier;     /**< Cell重用id */
@property (nonatomic, assign) __block CGFloat cellHeight; /**< Cell高度 */

@property (nonatomic, copy) NSString *mobclick;           /**< Cell点击埋点点击事件 */
@property (nonatomic, strong) NSDictionary *attributes;   /**< Cell埋点的状态属性 */

@property (nonatomic, copy) NSString *routerUrl;          /**< 完整的路由跳转连接 router://app.lcfarm.com/account/tradedetail*/
@property (nonatomic, strong) NSDictionary *routerParams; /**< 路由跳转参数 */

@property (nonatomic, assign) BOOL isHidden;              /**< 默认NO是展示分割线，如果为YES则隐藏分割线 */

@property (nonatomic, copy) CellHeighCaculatedRefreshBlock refreshBlock;/**< Cell高刷新 */
@property (nonatomic, assign) BOOL isNeedRefreshCellHeight;/**< 是否需要在cell内部计算后刷新Cell高度，默认为NO 不需要 */


+ (instancetype)cellModelWithClass:(Class)aClass
                             model:(id)model
                    cellIdentifier:(NSString *)cellIdentifier
                        cellHeight:(CGFloat)cellHeight
                         routerUrl:(NSString *)routerUrl;


+ (instancetype)cellModelWithClass:(Class)aClass
                             model:(id)model
                    cellIdentifier:(NSString *)cellIdentifier
                        cellHeight:(CGFloat)cellHeight
                          mobclick:(id)mobclick
                         routerUrl:(NSString *)routerUrl
                      routerParams:(NSDictionary *)routerParams;


+ (instancetype)cellModelWithClass:(Class)aClass
                             model:(id)model
                    cellIdentifier:(NSString *)cellIdentifier
                        cellHeight:(CGFloat)cellHeight
                          mobclick:(NSString *)mobclick
                        attributes:(NSDictionary *)attributes
                         routerUrl:(NSString *)routerUrl
                      routerParams:(NSDictionary *)routerParams;


@end
