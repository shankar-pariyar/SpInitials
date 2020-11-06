#import "SpInitialsPlugin.h"
#if __has_include(<sp_initials/sp_initials-Swift.h>)
#import <sp_initials/sp_initials-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "sp_initials-Swift.h"
#endif

@implementation SpInitialsPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftSpInitialsPlugin registerWithRegistrar:registrar];
}
@end
