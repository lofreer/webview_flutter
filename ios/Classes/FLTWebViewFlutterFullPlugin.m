// Copyright 2013 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

#import "FLTWebViewFlutterFullPlugin.h"
#import "FLTCookieManagerFull.h"
#import "FlutterWebViewFull.h"

@implementation FLTWebViewFlutterFullPlugin

+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  FLTWebViewFactory* webviewFactory =
      [[FLTWebViewFactory alloc] initWithMessenger:registrar.messenger];
  [registrar registerViewFactory:webviewFactory withId:@"plugins.flutter.io/webview"];
  [FLTCookieManagerFull registerWithRegistrar:registrar];
}

@end
