//
//  RSACryptoTests.m
//  RSACryptoTests
//
//  Created by Rohan Aurora on 10/7/14.
//  Copyright (c) 2014 Rohan Aurora. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "RSACrypto.h"
#import "ViewController.h"

@interface RSACryptoTests : XCTestCase
@property (nonatomic) ViewController *vc;
@end

@implementation RSACryptoTests

- (void)setUp {
    
    [super setUp];
    
    self.vc = [[ViewController alloc] init];
}

- (void)tearDown {

    self.vc = nil;
    
    [super tearDown];
}

-(void) testVCNotNil {
    
    XCTAssertNotNil(self.vc, @"VC is nil");
    
}

-(void) testCertificateNotNil {

    self.vc.keypath = [[NSBundle mainBundle] pathForResource:@"public_key" ofType:@"der"];

    XCTAssertNotNil(self.vc.keypath, @"Certificate is nil");
}


@end
