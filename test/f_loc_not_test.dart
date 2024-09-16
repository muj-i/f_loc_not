import 'package:flutter_test/flutter_test.dart';
import 'package:f_loc_not/f_loc_not.dart';
import 'package:f_loc_not/f_loc_not_platform_interface.dart';
import 'package:f_loc_not/f_loc_not_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFLocNotPlatform
    with MockPlatformInterfaceMixin
    implements FLocNotPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FLocNotPlatform initialPlatform = FLocNotPlatform.instance;

  test('$MethodChannelFLocNot is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFLocNot>());
  });

  test('getPlatformVersion', () async {
    FLocNot fLocNotPlugin = FLocNot();
    MockFLocNotPlatform fakePlatform = MockFLocNotPlatform();
    FLocNotPlatform.instance = fakePlatform;

    expect(await fLocNotPlugin.getPlatformVersion(), '42');
  });
}
