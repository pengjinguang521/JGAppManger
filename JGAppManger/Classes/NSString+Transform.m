//
//  MMGoblins
//
//  Created by JGPeng on 2019/5/29.
//  Copyright © 2019 彭金光. All rights reserved.
//

#import "NSString+Transform.h"

@implementation NSString (Transform)
/**
 把姓名转化成拼音且首字母大写
 */
- (NSString *)transformCharacter {
    
    NSMutableString *str = [self mutableCopy];
    CFStringTransform((CFMutableStringRef) str, NULL, kCFStringTransformMandarinLatin, NO);
    CFStringTransform((CFMutableStringRef)str, NULL, kCFStringTransformStripDiacritics, NO);
    NSString *pinYin = [str stringByReplacingOccurrencesOfString:@" " withString:@""];;
    
    return [pinYin uppercaseString];
}


//获取汉字的首字母
- (NSString *)firstCharactor:(NSString *)aString
{
    NSMutableString *str = [NSMutableString stringWithString:aString];
    CFStringTransform((CFMutableStringRef)str,NULL, kCFStringTransformMandarinLatin,NO);
    CFStringTransform((CFMutableStringRef)str,NULL, kCFStringTransformStripDiacritics,NO);
    
    NSString *pinYin = [str capitalizedString];
    
    NSString *firatCharactors = [NSMutableString string];
    for (int i = 0; i < pinYin.length; i++) {
        if ([pinYin characterAtIndex:i] >= 'A' && [pinYin characterAtIndex:i] <= 'Z') {
            firatCharactors = [firatCharactors stringByAppendingString:[NSString stringWithFormat:@"%C",[pinYin characterAtIndex:i]]];
        }
    }
    return firatCharactors;
}

@end
