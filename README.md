# JHStringFormat
some methods

---

# Methods

```
/**
 大于等于10000时，显示“x 万”并且精确到千位.
 如：10999时，显示“1万”；11000时，显示“1.1万”.
 */
+ (NSString *)numberFormat:(NSInteger)number;

/**
 没有小数位时，去掉；有则保留。count 小数位。
 1.00 -> 1
 1.2  -> 1.2
 */
+ (NSString *)floatFormat:(CGFloat)floater count:(NSInteger)count;

```

---
