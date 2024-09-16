import 'package:f_loc_not/src/f_loc_not_services.dart';

import 'f_loc_not_platform_interface.dart';

class FLocNot {
  Future<String?> getPlatformVersion() {
    return FLocNotPlatform.instance.getPlatformVersion();
  }

  static Future<void> init() async {
    return FLocNotServices.init();
  }

  static Future<void> showLocalNotification(String title, String body) async {
    return FLocNotServices.showLocalNotification(title, body);
  }
}
