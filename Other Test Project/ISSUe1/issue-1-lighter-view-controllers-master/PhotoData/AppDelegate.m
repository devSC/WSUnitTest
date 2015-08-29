//
//  AppDelegate.m
//  objc.io example project (issue #1)
//

#import "AppDelegate.h"
#import "PhotosViewController.h"
#import "Store.h"


static BOOL isRunningTests(void) __attribute__((const));


@implementation AppDelegate

+ (instancetype)sharedDelegate
{
    return [UIApplication sharedApplication].delegate;
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
//    NSLog(@"ProcessInfo: %@",[[NSProcessInfo processInfo] environment]);
//    NSLog(@"passLocation: %@", [[[NSProcessInfo processInfo] environment][@"XCInjectBundle"] pathExtension]);
    if (isRunningTests()) {
        return YES;
    }
    PhotosViewController *photosViewController = [[PhotosViewController alloc] initWithNibName:@"PhotosViewController"
                                                                                              bundle:nil];
    UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:photosViewController];
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    [self.window setRootViewController:navigationController];
    [self.window makeKeyAndVisible];
    return YES;
}

@synthesize store = _store;

- (Store *)store
{
    if (_store == nil) {
        _store = [Store store];
    }
    return _store;
}

@end


static BOOL isRunningTests(void)
{
    return [[[[NSProcessInfo processInfo] environment][@"XCInjectBundle"] pathExtension] isEqualToString:@"octest"];
}

/*--------正式运行进程信息------------------
 
2015-08-27 22:57:43.654 PhotoData[16499:350400] ProcessInfo: {
    "CFFIXED_USER_HOME" = "/Users/devSC/Library/Developer/CoreSimulator/Devices/55C55D7F-58F0-4B37-B349-3D40638B19C9/data/Containers/Data/Application/B399D4C6-E992-4A4D-A895-A8253EAF0B07";
    "CFLOG_FORCE_STDERR" = YES;
    CLASSIC = 2;
    "DYLD_FALLBACK_FRAMEWORK_PATH" = "/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator.sdk/System/Library/Frameworks";
    "DYLD_FALLBACK_LIBRARY_PATH" = "/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator.sdk/usr/lib";
    "DYLD_FRAMEWORK_PATH" = "/Users/devSC/Library/Developer/Xcode/DerivedData/PhotoData-cfheorimtjpxekgjkyesusqxlvhq/Build/Products/Debug-iphonesimulator";
    "DYLD_LIBRARY_PATH" = "/Users/devSC/Library/Developer/Xcode/DerivedData/PhotoData-cfheorimtjpxekgjkyesusqxlvhq/Build/Products/Debug-iphonesimulator:/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator.sdk/usr/lib/system/introspection";
    "DYLD_ROOT_PATH" = "/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator.sdk";
    "DYLD_SHARED_REGION" = avoid;
    FBSClientLogging = 0;
    HOME = "/Users/devSC/Library/Developer/CoreSimulator/Devices/55C55D7F-58F0-4B37-B349-3D40638B19C9/data/Containers/Data/Application/B399D4C6-E992-4A4D-A895-A8253EAF0B07";
    "IOS_SIMULATOR_SYSLOG_SOCKET" = "/private/tmp/com.apple.CoreSimulator.SimDevice.55C55D7F-58F0-4B37-B349-3D40638B19C9.launchd_sim/syslogsock";
    "IPHONE_SHARED_RESOURCES_DIRECTORY" = "/Users/devSC/Library/Developer/CoreSimulator/Devices/55C55D7F-58F0-4B37-B349-3D40638B19C9/data";
    "IPHONE_SIMULATOR_CLASS" = N61;
    "IPHONE_SIMULATOR_DEVICE" = iPhone;
    "IPHONE_SIMULATOR_ROOT" = "/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator.sdk";
    "IPHONE_TVOUT_EXTENDED_PROPERTIES" = "/Users/devSC/Library/Developer/CoreSimulator/Devices/55C55D7F-58F0-4B37-B349-3D40638B19C9/data/Library/Application Support/iPhone Simulator/com.apple.iphonesimulator/extended_display.plist";
    NSUnbufferedIO = YES;
    PATH = "/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator.sdk/usr/bin:/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator.sdk/bin:/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator.sdk/usr/sbin:/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator.sdk/sbin:/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator.sdk/usr/local/bin";
    "SIMULATOR_CAPABILITIES" = "/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/Library/CoreSimulator/Profiles/DeviceTypes/iPhone 6.simdevicetype/Contents/Resources/capabilities.plist";
    "SIMULATOR_DEVICE_NAME" = iPhone4Simulator;
    "SIMULATOR_EXTENDED_DISPLAY_PROPERTIES" = "/Users/devSC/Library/Developer/CoreSimulator/Devices/55C55D7F-58F0-4B37-B349-3D40638B19C9/data/Library/Application Support/iPhone Simulator/com.apple.iphonesimulator/extended_display.plist";
    "SIMULATOR_HOST_HOME" = "/Users/devSC";
    "SIMULATOR_LOG_ROOT" = "/Users/devSC/Library/Logs/CoreSimulator/55C55D7F-58F0-4B37-B349-3D40638B19C9";
    "SIMULATOR_MAINSCREEN_HEIGHT" = 1334;
    "SIMULATOR_MAINSCREEN_PITCH" = "326.000000";
    "SIMULATOR_MAINSCREEN_SCALE" = "2.000000";
    "SIMULATOR_MAINSCREEN_WIDTH" = 750;
    "SIMULATOR_MEMORY_WARNINGS" = "/Users/devSC/Library/Developer/CoreSimulator/Devices/55C55D7F-58F0-4B37-B349-3D40638B19C9/data/var/run/memory_warning_simulation";
    "SIMULATOR_MODEL_IDENTIFIER" = "iPhone7,2";
    "SIMULATOR_PLATFORM_RUNTIME_OVERLAY_ROOT" = "/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/Library/CoreSimulator/RuntimeOverlay";
    "SIMULATOR_ROOT" = "/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator.sdk";
    "SIMULATOR_RUNTIME_BUILD_VERSION" = 12H141;
    "SIMULATOR_RUNTIME_VERSION" = "8.4";
    "SIMULATOR_SHARED_RESOURCES_DIRECTORY" = "/Users/devSC/Library/Developer/CoreSimulator/Devices/55C55D7F-58F0-4B37-B349-3D40638B19C9/data";
    "SIMULATOR_UDID" = "55C55D7F-58F0-4B37-B349-3D40638B19C9";
    "SIMULATOR_VERSION_INFO" = "CoreSimulator 117.15 - Device: iPhone 6 - Runtime: iOS 8.4 (12H141) - DeviceType: iPhone 6";
    "TESTMANAGERD_SIM_SOCK" = "/private/tmp/com.apple.launchd.XpeyPzDAXo/com.apple.testmanagerd.unix-domain.socket";
    TMPDIR = "/Users/devSC/Library/Developer/CoreSimulator/Devices/55C55D7F-58F0-4B37-B349-3D40638B19C9/data/Containers/Data/Application/B399D4C6-E992-4A4D-A895-A8253EAF0B07/tmp";
    "XPC_FLAGS" = 0x0;
    "XPC_SERVICE_NAME" = "UIKitApplication:io.objc.PhotoData[0x70b1]";
    "XPC_SIMULATOR_LAUNCHD_NAME" = "com.apple.CoreSimulator.SimDevice.55C55D7F-58F0-4B37-B349-3D40638B19C9.launchd_sim";
    "__XCODE_BUILT_PRODUCTS_DIR_PATHS" = "/Users/devSC/Library/Developer/Xcode/DerivedData/PhotoData-cfheorimtjpxekgjkyesusqxlvhq/Build/Products/Debug-iphonesimulator";
    "__XPC_DYLD_FRAMEWORK_PATH" = "/Users/devSC/Library/Developer/Xcode/DerivedData/PhotoData-cfheorimtjpxekgjkyesusqxlvhq/Build/Products/Debug-iphonesimulator";
    "__XPC_DYLD_LIBRARY_PATH" = "/Users/devSC/Library/Developer/Xcode/DerivedData/PhotoData-cfheorimtjpxekgjkyesusqxlvhq/Build/Products/Debug-iphonesimulator";
}
--------测试运行进程信息------------------
 
 2015-08-27 22:58:27.614 PhotoData[16534:351461] ProcessInfo: {
 AppTargetLocation = "/Users/devSC/Library/Developer/Xcode/DerivedData/PhotoData-cfheorimtjpxekgjkyesusqxlvhq/Build/Products/Debug-iphonesimulator/PhotoData.app/PhotoData";
 "CFFIXED_USER_HOME" = "/Users/devSC/Library/Developer/CoreSimulator/Devices/55C55D7F-58F0-4B37-B349-3D40638B19C9/data/Containers/Data/Application/DB85D2FB-4506-4199-9322-63CBF8186E08";
 "CFLOG_FORCE_STDERR" = YES;
 CLASSIC = 2;
 "DYLD_FALLBACK_FRAMEWORK_PATH" = "/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator.sdk/Developer/Library/Frameworks";
 "DYLD_FALLBACK_LIBRARY_PATH" = "/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator.sdk/usr/lib";
 "DYLD_FRAMEWORK_PATH" = "/Users/devSC/Library/Developer/Xcode/DerivedData/PhotoData-cfheorimtjpxekgjkyesusqxlvhq/Build/Products/Debug-iphonesimulator";
 "DYLD_INSERT_LIBRARIES" = "/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/Library/PrivateFrameworks/IDEBundleInjection.framework/IDEBundleInjection";
 "DYLD_LIBRARY_PATH" = "/Users/devSC/Library/Developer/Xcode/DerivedData/PhotoData-cfheorimtjpxekgjkyesusqxlvhq/Build/Products/Debug-iphonesimulator";
 "DYLD_ROOT_PATH" = "/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator.sdk";
 "DYLD_SHARED_REGION" = avoid;
 FBSClientLogging = 0;
 HOME = "/Users/devSC/Library/Developer/CoreSimulator/Devices/55C55D7F-58F0-4B37-B349-3D40638B19C9/data/Containers/Data/Application/DB85D2FB-4506-4199-9322-63CBF8186E08";
 "IOS_SIMULATOR_SYSLOG_SOCKET" = "/private/tmp/com.apple.CoreSimulator.SimDevice.55C55D7F-58F0-4B37-B349-3D40638B19C9.launchd_sim/syslogsock";
 "IPHONE_SHARED_RESOURCES_DIRECTORY" = "/Users/devSC/Library/Developer/CoreSimulator/Devices/55C55D7F-58F0-4B37-B349-3D40638B19C9/data";
 "IPHONE_SIMULATOR_CLASS" = N61;
 "IPHONE_SIMULATOR_DEVICE" = iPhone;
 "IPHONE_SIMULATOR_ROOT" = "/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator.sdk";
 "IPHONE_TVOUT_EXTENDED_PROPERTIES" = "/Users/devSC/Library/Developer/CoreSimulator/Devices/55C55D7F-58F0-4B37-B349-3D40638B19C9/data/Library/Application Support/iPhone Simulator/com.apple.iphonesimulator/extended_display.plist";
 NSUnbufferedIO = YES;
 PATH = "/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator.sdk/usr/bin:/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator.sdk/bin:/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator.sdk/usr/sbin:/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator.sdk/sbin:/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator.sdk/usr/local/bin";
 "SIMULATOR_CAPABILITIES" = "/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/Library/CoreSimulator/Profiles/DeviceTypes/iPhone 6.simdevicetype/Contents/Resources/capabilities.plist";
 "SIMULATOR_DEVICE_NAME" = iPhone4Simulator;
 "SIMULATOR_EXTENDED_DISPLAY_PROPERTIES" = "/Users/devSC/Library/Developer/CoreSimulator/Devices/55C55D7F-58F0-4B37-B349-3D40638B19C9/data/Library/Application Support/iPhone Simulator/com.apple.iphonesimulator/extended_display.plist";
 "SIMULATOR_HOST_HOME" = "/Users/devSC";
 "SIMULATOR_LOG_ROOT" = "/Users/devSC/Library/Logs/CoreSimulator/55C55D7F-58F0-4B37-B349-3D40638B19C9";
 "SIMULATOR_MAINSCREEN_HEIGHT" = 1334;
 "SIMULATOR_MAINSCREEN_PITCH" = "326.000000";
 "SIMULATOR_MAINSCREEN_SCALE" = "2.000000";
 "SIMULATOR_MAINSCREEN_WIDTH" = 750;
 "SIMULATOR_MEMORY_WARNINGS" = "/Users/devSC/Library/Developer/CoreSimulator/Devices/55C55D7F-58F0-4B37-B349-3D40638B19C9/data/var/run/memory_warning_simulation";
 "SIMULATOR_MODEL_IDENTIFIER" = "iPhone7,2";
 "SIMULATOR_PLATFORM_RUNTIME_OVERLAY_ROOT" = "/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/Library/CoreSimulator/RuntimeOverlay";
 "SIMULATOR_ROOT" = "/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator.sdk";
 "SIMULATOR_RUNTIME_BUILD_VERSION" = 12H141;
 "SIMULATOR_RUNTIME_VERSION" = "8.4";
 "SIMULATOR_SHARED_RESOURCES_DIRECTORY" = "/Users/devSC/Library/Developer/CoreSimulator/Devices/55C55D7F-58F0-4B37-B349-3D40638B19C9/data";
 "SIMULATOR_UDID" = "55C55D7F-58F0-4B37-B349-3D40638B19C9";
 "SIMULATOR_VERSION_INFO" = "CoreSimulator 117.15 - Device: iPhone 6 - Runtime: iOS 8.4 (12H141) - DeviceType: iPhone 6";
 "TESTMANAGERD_SIM_SOCK" = "/private/tmp/com.apple.launchd.XpeyPzDAXo/com.apple.testmanagerd.unix-domain.socket";
 TMPDIR = "/Users/devSC/Library/Developer/CoreSimulator/Devices/55C55D7F-58F0-4B37-B349-3D40638B19C9/data/Containers/Data/Application/DB85D2FB-4506-4199-9322-63CBF8186E08/tmp";
 TestBundleLocation = "/Users/devSC/Library/Developer/Xcode/DerivedData/PhotoData-cfheorimtjpxekgjkyesusqxlvhq/Build/Products/Debug-iphonesimulator/PhotoDataTests.octest";
//------------正式中没有此信息
 XCInjectBundle = "/Users/devSC/Library/Developer/Xcode/DerivedData/PhotoData-cfheorimtjpxekgjkyesusqxlvhq/Build/Products/Debug-iphonesimulator/PhotoDataTests.octest";
 XCInjectBundleInto = "/Users/devSC/Library/Developer/Xcode/DerivedData/PhotoData-cfheorimtjpxekgjkyesusqxlvhq/Build/Products/Debug-iphonesimulator/PhotoData.app/PhotoData";
 "XPC_FLAGS" = 0x0;
 "XPC_SERVICE_NAME" = "UIKitApplication:io.objc.PhotoData[0x96e7]";
 "XPC_SIMULATOR_LAUNCHD_NAME" = "com.apple.CoreSimulator.SimDevice.55C55D7F-58F0-4B37-B349-3D40638B19C9.launchd_sim";
 }

 */

