# NSAttrbuttedString+MarkSymbol
a category of NSAttributedString.

can set font and color for marked part of string.

##Usage

`attributedText = [[NSAttributedString alloc] initWithString:@"this is the part of unmarked @@ this is the part of marked @@ this is another part of unmarked" fontMarked:[UIFont boldSystemFontOfSize:17] colorMarked:[UIColor colorWithRed:0.000f green:0.643f blue:0.965f alpha:1.00f] fontUnmarked:[UIFont systemFontOfSize:17] colorUnmarked:[UIColor blackColor]];`

The mark symbol is set as @@ as default. 

Can use 

`-(instancetype)initWithString:(NSString *)str symbol:(NSString *)sym fontMarked:(UIFont *)font1 colorMarked:(UIColor *)color1 fontUnmarked:(UIFont *)font2 colorUnmarked:(UIColor *)color2;`

to set customised symbol.

##License
MIT License
