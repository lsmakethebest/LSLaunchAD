//
//  LSLaunchAD.h
//  LSLaunchAD
//
//  Created by 刘松 on 16/8/26.
//  Copyright © 2016年 liusong. All rights reserved.
//

#import <UIKit/UIKit.h>

// clickAD YES为点击了广告 NO为倒计时完成倒计时或点击了跳过按钮
typedef void (^LSLaunchADBlock)(BOOL clickAD);

@interface LSLaunchAD : UIView

/**
*  显示
*
*  @param window keyWindow
*  @param countTime 倒计时时间
*  @param isShowCountTime 是否显示倒计时时间在跳过按钮上
*  @param showSkipButton 是否显示跳过按钮
*  @param isFullScreenAD 广告是否全屏
*  @param localAdImgName 本地图片广告name
*  @param imageURL 网络图片广告URL
*  @param canClickAD 广告图片能否点击
*  @param aDBlock              回调block
*
*  @return self
*/
+ (instancetype)showWithWindow:(UIWindow *)window
                     countTime:(int)countTime
         showCountTimeOfButton:(BOOL)showCountTimeOfButton
                showSkipButton:(BOOL)showSkipButton
                isFullScreenAD:(BOOL)isFullScreenAD
                localAdImgName:(NSString *)localAdImgName
                      imageURL:(NSString *)imageURL
                    canClickAD:(BOOL)canClickAD
                       aDBlock:(LSLaunchADBlock)aDBlock;

@end
