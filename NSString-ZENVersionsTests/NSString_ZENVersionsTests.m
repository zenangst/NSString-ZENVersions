@import UIKit;
@import XCTest;

#import "NSString+ZENVersions.h"

@interface NSString_ZENVersionsTests : XCTestCase

@end

@implementation NSString_ZENVersionsTests

- (void)testNumericNewerThan
{
    XCTAssertTrue([@"1.0" zen_newerThan:@"0.9"]);
}

- (void)testAlphabeticVersion
{
    XCTAssertTrue([@"B" zen_newerThan:@"A"]);
}

- (void)testVerboseVersion
{
    XCTAssertTrue([@"1.1.3b" zen_newerThan:@"1.0.1a"]);
}

- (void)testMajorVerboseVersion
{
    XCTAssertTrue([@"2.1" zen_newerThan:@"1.0.0"]);
}

- (void)testFaultyVersion
{
    XCTAssertFalse([@"0.9" zen_newerThan:@"1.0.0"]);
}

- (void)testSameVersion
{
    XCTAssertFalse([@"1.0" zen_olderThan:@"1.0"]);
}

@end
