#import "NSString+ZENVersions.h"

@implementation NSString (ZENVersions)

- (BOOL)zen_newerThan:(NSString *)versionString
{
    BOOL result = NO;

    if ([self compare:versionString options:NSNumericSearch] == NSOrderedDescending) {
        result = YES;
    }

    return result;
}

- (BOOL)zen_olderThan:(NSString *)versionString
{
    BOOL result;

    if ([self isEqualToString:versionString]) {
        result = NO;
    } else {
        result = (![self zen_newerThan:versionString]);
    }

    return result;
}

@end
