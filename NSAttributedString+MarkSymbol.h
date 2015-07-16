//
//  NSAttributedString+MarkSymbol.h
//  TouchPal
//
//  Created by Zhen Xiaolei on 7/16/15.
//  Copyright (c) 2015 CooTek. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NSAttributedString(MarkSymbol)
-(instancetype)initWithString:(NSString *)str symbol:(NSString *)sym fontIn:(UIFont *)font1 colorIn:(UIColor *)color1 fontOut:(UIFont *)font2 colorOut:(UIColor *)color2;

-(instancetype)initWithString:(NSString *)str fontIn:(UIFont *)font1 colorIn:(UIColor *)color1 fontOut:(UIFont *)font2 colorOut:(UIColor *)color2;

@end
