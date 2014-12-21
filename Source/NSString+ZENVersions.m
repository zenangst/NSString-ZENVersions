#import "NSString+ZENVersions.h"

@implementation NSString (ZENVersions)

- (BOOL)zen_newerThan:(NSString *)versionString
{
    return ([self compare:versionString options:NSNumericSearch] == NSOrderedDescending);
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
