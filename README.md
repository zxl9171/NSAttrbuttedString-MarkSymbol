# NSAttrbuttedString-MarkSymbol
a category of NSAttributedString.

can set font and color for marked part of string.

##Usage

attributedText = [[NSAttributedString alloc] initWithString:@"this is the part of unmarked(out) @@ this is the part of marked(in) @@ this is another part of unmarked" fontIn:[UIFont boldSystemFontOfSize:17] colorIn:[UIColor blueColor] fontOut:[UIFont systemFontOfSize:17] colorOut:[UIColor blackColor]];

The mark symbol is set as @@ as default. 

Can use 

-(instancetype)initWithString:(NSString *)str symbol:(NSString *)sym fontIn:(UIFont *)font1 colorIn:(UIColor *)color1 fontOut:(UIFont *)font2 colorOut:(UIColor *)color2;

to set customised symbol.
