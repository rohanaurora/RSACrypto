//
//  RSACrypto.h
//  RSACrypto
//
//  Created by Rohan Aurora on 10/7/14.
//  Copyright (c) 2014 Rohan Aurora. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RSACrypto : NSObject

- (RSACrypto *)initWithPublicKey:(NSString *)publicKeyPath;
- (NSString *) encryptToString:(NSString *)plainText;

@end
