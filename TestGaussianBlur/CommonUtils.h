//
//  CommonUtils.h
//  TestGaussianBlur
//
//  Created by 吴迪玮 on 16/1/13.
//  Copyright © 2016年 DNT. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface CommonUtils : NSObject

+ (UIImage *)blurryImage:(UIImage *)image withBlurLevel:(CGFloat)blur;

@end
