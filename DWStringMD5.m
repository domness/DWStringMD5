//
//  DWStringMD5.m
//
//  Created by Dominic Wroblewski on 28/06/2012.
//

#import "DWStringMD5.h"
#import <CommonCrypto/CommonDigest.h>

@implementation NSString (MD5String)

+ (NSString*)md5HexDigest:(NSString*)input
{
    const char* str = [input UTF8String];
    unsigned char result[CC_MD5_DIGEST_LENGTH];
    CC_MD5(str, strlen(str), result);
    NSMutableString *ret = [NSMutableString stringWithCapacity:CC_MD5_DIGEST_LENGTH*2];
    for(int i = 0; i<CC_MD5_DIGEST_LENGTH; i++)
        [ret appendFormat:@"%02x",result[i]];
    return ret;
}

@end
