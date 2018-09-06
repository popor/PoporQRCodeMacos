//
//  NSImage+QRCode.h
//  QRCodeGenerated
//
//  Created by ZhangWeichen on 2017/6/6.
//  Copyright © 2017年 Avcon. All rights reserved.
//
/*
 摘自https://github.com/shibiao/QRCodeGenerated
 因为作者没有增加到pod中,所以不才放到了我的pod组里面.
 担心命名冲突,改名字了,以作者名字简写更改
 */

#import <Cocoa/Cocoa.h>
#import <CoreImage/CoreImage.h>

@interface ZwcQRCode : NSObject

// pre
+ (NSImage *)qrImageWithContent:(NSString *)content size:(CGFloat)size;

// 没有设置透明度
+ (NSImage *)qrImageWithContent:(NSString *)content size:(CGFloat)size color:(NSColor *)color;
+ (NSImage *)qrImageWithContent:(NSString *)content size:(CGFloat)size red:(NSInteger)red green:(NSInteger)green blue:(NSInteger)blue;

// 没有设置透明度
+ (NSImage *)qrImageWithContent:(NSString *)content logo:(NSImage *)logo size:(CGFloat)size color:(NSColor *)color;
+ (NSImage *)qrImageWithContent:(NSString *)content logo:(NSImage *)logo size:(CGFloat)size red:(NSInteger)red green:(NSInteger)green blue:(NSInteger)blue;

@end
