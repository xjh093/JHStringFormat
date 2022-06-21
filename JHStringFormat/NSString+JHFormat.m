//
//  NSString+JHFormat.m
//  JHKit
//
//  Created by HaoCold on 2018/12/4.
//  Copyright © 2018 HaoCold. All rights reserved.
//

#import "NSString+tool.h"

@implementation NSString (JHFormat)

+ (NSString *)numberFormat:(NSInteger)number
{
    if (number < 10000) {
        return [NSString stringWithFormat:@"%@",@(number)];
    }
    NSInteger pre = number / 10000;
    NSInteger sub = (number % 10000)/1000;
    if (sub > 0) {
        return [NSString stringWithFormat:@"%@.%@万",@(pre),@(sub)];
    }else{
        return [NSString stringWithFormat:@"%@万",@(pre)];
    }
}

+ (NSString *)floatFormat:(CGFloat)floater count:(NSInteger)count;
{
    NSString *format = @"%.0f";
    if (ceil(floater) > floater) {
        if (count < 1) { count = 1; }
        format = [NSString stringWithFormat:@"%%.%@f", @(count)];
    }
    return [NSString stringWithFormat:format, floater];
}

@end
