//
//  DWStringMD5.h
//
//  Created by Dominic Wroblewski on 28/06/2012.
//

#import <Foundation/Foundation.h>

@interface NSString (MD5String)

+ (NSString*)md5HexDigest:(NSString*)input;

@end
