//
//  NSString+JHFormat.h
//  JHKit
//
//  Created by HaoCold on 2018/12/4.
//  Copyright © 2018 HaoCold. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (JHFormat)

/**
 大于等于10000时，显示“x 万”并且精确到千位.
 如：10999时，显示“1万”；11000时，显示“1.1万“.
 
 @param number number.
 @return string.ount
 */
+ (NSString *)numberFormat:(NSInteger)number;

/**
 没有小数位时，去掉；有则保留。count 小数位。
 1.00 -> 1
 1.2  -> 1.2
 */
+ (NSString *)floatFormat:(CGFloat)floater count:(NSInteger)count;

@end

NS_ASSUME_NONNULL_END
