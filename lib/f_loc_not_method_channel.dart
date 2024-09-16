import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'f_loc_not_platform_interface.dart';

/// An implementation of [FLocNotPlatform] that uses method channels.
class MethodChannelFLocNot extends FLocNotPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('f_loc_not');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
