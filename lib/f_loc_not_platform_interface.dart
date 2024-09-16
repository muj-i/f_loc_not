import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'f_loc_not_method_channel.dart';

abstract class FLocNotPlatform extends PlatformInterface {
  /// Constructs a FLocNotPlatform.
  FLocNotPlatform() : super(token: _token);

  static final Object _token = Object();

  static FLocNotPlatform _instance = MethodChannelFLocNot();

  /// The default instance of [FLocNotPlatform] to use.
  ///
  /// Defaults to [MethodChannelFLocNot].
  static FLocNotPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FLocNotPlatform] when
  /// they register themselves.
  static set instance(FLocNotPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
