//
//  NSAttributedString+MarkSymbol.h
//  TouchPal
//
//  Created by Zhen Xiaolei on 7/16/15.
//  Copyright (c) 2015 Zhen Xiaolei. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NSAttributedString(MarkSymbol)
-(instancetype)initWithString:(NSString *)str symbol:(NSString *)sym fontMarked:(UIFont *)font1 colorMarked:(UIColor *)color1 fontUnmarked:(UIFont *)font2 colorUnmarked:(UIColor *)color2;

-(instancetype)initWithString:(NSString *)str fontMarked:(UIFont *)font1 colorMarked:(UIColor *)color1 fontUnmarked:(UIFont *)font2 colorUnmarked:(UIColor *)color2;

@end
