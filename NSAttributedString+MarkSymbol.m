//
//  NSAttributedString+MarkSymbol.m
//  TouchPal
//
//  Created by Zhen Xiaolei on 7/16/15.
//  Copyright (c) 2015 Zhen Xiaolei. All rights reserved.
//

#import "NSAttributedString+MarkSymbol.h"
#import <CoreText/CTStringAttributes.h>
#import <CoreText/CTFont.h>
@implementation NSAttributedString(MarkSymbol)

-(instancetype)initWithString:(NSString *)_str symbol:(NSString *)sym fontMarked:(UIFont *)font1 colorMarked:(UIColor *)color1 fontUnmarked:(UIFont *)font2 colorUnmarked:(UIColor *)color2{
    NSMutableAttributedString *string = [[NSMutableAttributedString alloc] initWithString:_str];
    NSMutableString *str = [[NSMutableString alloc] initWithString:_str];;
    NSRange rangeAll;
    rangeAll.location=0;
    rangeAll.length=str.length;
    [string addAttribute:NSForegroundColorAttributeName value:color2 range:rangeAll];
    [string addAttribute:NSFontAttributeName value:font2 range:rangeAll];
    NSRange range = [str rangeOfString:[NSString stringWithFormat:@"%@.*%@",sym,sym] options:NSRegularExpressionSearch];
    while (range.location != NSNotFound) {
        NSRange rangeOfSym;
        rangeOfSym.location = range.location+range.length-sym.length;
        rangeOfSym.length = sym.length;
        [str deleteCharactersInRange:rangeOfSym];
        [string deleteCharactersInRange:rangeOfSym];
        rangeOfSym.location = range.location;
        [string deleteCharactersInRange:rangeOfSym];
        [str deleteCharactersInRange:rangeOfSym];
        range.length -= 2*sym.length;
        [string addAttribute:NSForegroundColorAttributeName value:color1 range:range];
        [string addAttribute:NSFontAttributeName value:font1 range:range];
        NSRange rangeLeft;
        rangeLeft.location=range.location+range.length;
        rangeLeft.length = string.length-rangeLeft.location;
        range = [str rangeOfString:[NSString stringWithFormat:@"%@.*%@",sym,sym] options:NSRegularExpressionSearch range:rangeLeft];
    }
    return string;
}

-(instancetype)initWithString:(NSString *)str fontMarked:(UIFont *)font1 colorMarked:(UIColor *)color1 fontUnmarked:(UIFont *)font2 colorUnmarked:(UIColor *)color2{
    return [self initWithString:str symbol:@"@@" fontMarked:font1 colorMarked:color1 fontUnmarked:font2
                       colorUnmarked:color2];
}

@end
