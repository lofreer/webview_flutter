// Copyright 2013 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

package io.flutter.plugins.webviewflutterfull;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.StandardMessageCodec;
import io.flutter.plugin.platform.PlatformView;
import io.flutter.plugin.platform.PlatformViewFactory;
import java.util.Map;

public final class WebViewFactory extends PlatformViewFactory {
  private final BinaryMessenger messenger;
  private final View containerView;
  private final Activity mActivity;

  WebViewFactory(BinaryMessenger messenger, View containerView, Activity activity) {
    super(StandardMessageCodec.INSTANCE);
    this.messenger = messenger;
    this.containerView = containerView;
    this.mActivity = activity;
  }

  @SuppressWarnings("unchecked")
  @Override
  public PlatformView create(Context context, int id, Object args) {
    Map<String, Object> params = (Map<String, Object>) args;
    return new FlutterWebView(context, messenger, id, params, containerView, mActivity);
  }
}
