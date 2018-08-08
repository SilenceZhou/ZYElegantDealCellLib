//
//  ZYPackageForCellModel.h
//  Nongfadai
//
//  Created by SilenceZhou on 08/09/2018..
//  Copyright © 2018年 SilenceZhou. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>


/**
 cell高度计算完成回调(刷新、或者做其他的)
 @param cellH 回调的高度
 */
typedef void(^CellHeighCaculatedRefreshBlock)(void);

/**
 公用cell刷新model,可以直接用或者继承添加额外的属性
 */
@interface ZYPackageForCellModel : NSObject

@property (nonatomic, strong) Class aClass;               /**< Cell类型 */
@property (nonatomic, strong) id model;                   /**< 具体的Cell对应具体的Model */
@property (nonatomic, copy) NSString *cellIdentifier;     /**< Cell重用id */
@property (nonatomic, assign) __block CGFloat cellHeight; /**< Cell高度  加上__block是因为可能在cell数据处理完成高度变了进行刷新 */

@property (nonatomic, copy) NSString *mobclick;           /**< Cell点击埋点点击事件 */
@property (nonatomic, strong) NSDictionary *attributes;   /**< Cell埋点的状态属性 */

@property (nonatomic, copy) NSString *routerUrl;          /**< 完整的路由跳转连接 router://app.lcfarm.com/account/tradedetail*/
@property (nonatomic, strong) NSDictionary *routerParams; /**< 路由跳转参数 */

@property (nonatomic, copy) CellHeighCaculatedRefreshBlock refreshBlock;/**< Cell高刷新 */

@property (nonatomic, assign) BOOL isHidden;              /**< 默认NO是展示分割线，如果为YES则隐藏分割线 */


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
