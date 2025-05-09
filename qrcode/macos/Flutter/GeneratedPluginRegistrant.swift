//
//  Generated file. Do not edit.
//

import FlutterMacOS
import Foundation

import flutter_image_compress_macos
import mobile_scanner

import sqflite_darwin

import shared_preferences_foundation
>
import url_launcher_macos

func RegisterGeneratedPlugins(registry: FlutterPluginRegistry) {
  FlutterImageCompressMacosPlugin.register(with: registry.registrar(forPlugin: "FlutterImageCompressMacosPlugin"))
  MobileScannerPlugin.register(with: registry.registrar(forPlugin: "MobileScannerPlugin"))
  OpenpgpPlugin.register(with: registry.registrar(forPlugin: "OpenpgpPlugin"))

  SqflitePlugin.register(with: registry.registrar(forPlugin: "SqflitePlugin"))

  SharedPreferencesPlugin.register(with: registry.registrar(forPlugin: "SharedPreferencesPlugin"))

  UrlLauncherPlugin.register(with: registry.registrar(forPlugin: "UrlLauncherPlugin"))
}
