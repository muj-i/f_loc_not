
import 'package:local_notification/src/local_notification_services.dart';

import 'local_notification_platform_interface.dart';

class LocalNotification {
  Future<String?> getPlatformVersion() {
    return LocalNotificationPlatform.instance.getPlatformVersion();
  }

  static Future<void> init() async {
    return LocalNotificationServices.init();
  }

  static Future<void> showLocalNotification(String title, String body) async {
    return LocalNotificationServices.showLocalNotification(title, body);
  }

  static Future<void> scheduleNotification(
      int id, String title, String body, DateTime scheduledTime) async {
    return LocalNotificationServices.scheduleNotification(id, title, body, scheduledTime);
  }

  static Future<void> cancelNotification(int id) async {
    return LocalNotificationServices.cancelNotification(id);
  }
}
