package com.example.my_app

import android.content.Intent
import android.os.Bundle
import io.flutter.app.FlutterActivity
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugins.GeneratedPluginRegistrant

class MainActivity: FlutterActivity() {

  private var sharedText: String? = "hello not data"

  override fun onCreate(savedInstanceState: Bundle?) {
    super.onCreate(savedInstanceState)
    GeneratedPluginRegistrant.registerWith(this)
    val action = intent.action
    val type = intent.type
    if (Intent.ACTION_SEND == action && type != null) {
      if ("text/plain" == type) {
        sharedText = intent.getStringExtra(Intent.EXTRA_TEXT)
      }
    }

    MethodChannel(flutterView, "app.channel.shared.data").setMethodCallHandler { call, result ->
      if (call.method == "getSharedText") {
        result.success(sharedText)
        sharedText = null
      }
    }
  }
}
