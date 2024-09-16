import 'package:flutter/material.dart';

abstract class NotificationPermissionAlert {
  static Future<void> show(
      {required BuildContext context,
      required Function() onAllowPress,
      Function()? onDenyPress}) async {
    await showDialog(
        context: context,
        builder: (context) => AlertDialog(
              backgroundColor: const Color(0xfffbfbfb),
              title: const Text(
                'Awesome Notifications needs your permission',
                textAlign: TextAlign.center,
                maxLines: 2,
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
              ),
              content: const Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.notifications,
                    size: 100,
                  ),
                  SizedBox(height: 8),
                  Text(
                    'To proceed, you need to enable the permission to receive notifications',
                    maxLines: 2,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              actions: [
                TextButton(
                    onPressed: onDenyPress ??
                        () {
                          Navigator.pop(context);
                        },
                    child: const Text(
                      'Deny',
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 18,
                      ),
                    )),
                TextButton(
                  onPressed: onAllowPress,
                  child: const Text(
                    'Allow',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ));
  }
}
