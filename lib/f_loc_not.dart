
import 'f_loc_not_platform_interface.dart';

class FLocNot {
  Future<String?> getPlatformVersion() {
    return FLocNotPlatform.instance.getPlatformVersion();
  }
}
