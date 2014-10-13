//
//  ViewController.m
//  RSACrypto
//
//  Created by Rohan Aurora on 10/7/14.
//  Copyright (c) 2014 Rohan Aurora. All rights reserved.
//

#import "ViewController.h"
#import "RSACrypto.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.keypath = [[NSBundle mainBundle] pathForResource:@"public_key" ofType:@"der"];
    RSACrypto *rsa = [[RSACrypto alloc] initWithPublicKey:self.keypath];
    
    NSString *plainText = @"Hello World!";
    NSString *encryptedString = [rsa encryptToString:plainText];
    
    NSLog(@"Plain Text:  \n\n%@\n\n", plainText);
    NSLog(@"Encrypted String:  \n\n%@", encryptedString);
}

@end
