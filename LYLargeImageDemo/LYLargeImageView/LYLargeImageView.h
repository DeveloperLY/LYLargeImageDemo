//
//  LYLargeImageView.h
//  Test
//
//  Created by LiuY on 2018/8/9.
//  Copyright © 2018年 DeveloperLY. All rights reserved.
//

#import <UIKit/UIKit.h>

/// 切分大图，用多个小图来显示。只支持竖直的长图
@interface LYLargeImageView : UIImageView

/// 单块图片最大高度因子，宽度的倍数。默认为5
@property (nonatomic, assign) NSInteger maxHeightFator;

@end
