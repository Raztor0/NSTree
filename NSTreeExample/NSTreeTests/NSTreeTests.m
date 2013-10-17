//
//  NSTreeTests.m
//  NSTreeTests
//
//  Created by . Carlin on 10/16/13.
//  Copyright (c) 2013 Carlin Creations. All rights reserved.
//

#import <XCTest/XCTest.h>

#import "NSTree.h"

@interface NSTreeTests : XCTestCase
    @property (nonatomic, strong) NSTree *tree;
@end

@implementation NSTreeTests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    
    self.tree = [[NSTree alloc] initWithNodeCapacity:2];
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample
{
    XCTFail(@"No implementation for \"%s\"", __PRETTY_FUNCTION__);
}

- (void)testAdd
{
    XCTAssertTrue([self.tree addObject:[NSNumber numberWithInt:1]], @"Failed to add");
}

- (void)testSearch
{
    for (int i = 1; i <= 10; ++i) {
        [self.tree addObject:[NSNumber numberWithInt:i]];
    }
    XCTAssertTrue([self.tree containsObject:[NSNumber numberWithInt:5]], @"Couldn't find number 5");
}

- (void)testRemove
{
    
}

@end
