#import "NSString+ZENVersions.h"

@implementation NSString (ZENVersions)

- (BOOL)zen_newerThan:(NSString *)versionString
{
    return ([self compare:versionString options:NSNumericSearch] == NSOrderedDescending);
}

- (BOOL)zen_olderThan:(NSString *)versionString
{
    return (![self isEqualToString:versionString]) ? (![self zen_newerThan:versionString]) : NO ;
}

@end
