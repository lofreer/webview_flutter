//
//  Generated file. Do not edit.
//

#import "GeneratedPluginRegistrant.h"

#if __has_include(<integration_test/IntegrationTestPlugin.h>)
#import <integration_test/IntegrationTestPlugin.h>
#else
@import integration_test;
#endif

#if __has_include(<webview_flutter_full/FLTWebViewFlutterFullPlugin.h>)
#import <webview_flutter_full/FLTWebViewFlutterFullPlugin.h>
#else
@import webview_flutter_full;
#endif

@implementation GeneratedPluginRegistrant

+ (void)registerWithRegistry:(NSObject<FlutterPluginRegistry>*)registry {
  [IntegrationTestPlugin registerWithRegistrar:[registry registrarForPlugin:@"IntegrationTestPlugin"]];
  [FLTWebViewFlutterFullPlugin registerWithRegistrar:[registry registrarForPlugin:@"FLTWebViewFlutterFullPlugin"]];
}

@end
