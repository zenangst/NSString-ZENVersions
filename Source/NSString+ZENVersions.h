@import Foundation;

@interface NSString (ZENVersions)

- (BOOL)zen_newerThan:(NSString *)string;
- (BOOL)zen_olderThan:(NSString *)versionString;

@end
