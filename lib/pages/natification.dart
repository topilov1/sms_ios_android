import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class NatificationWidget {
  static final _natifications = FlutterLocalNotificationsPlugin();

  static Future init({bool scheduled = false}) async {
    var initAndroidSettings =
        const AndroidInitializationSettings('mipmap/ic_launcher');

    var ios = const DarwinNotificationDetails();
    final settings = InitializationSettings(
      android: initAndroidSettings,
      iOS: const DarwinInitializationSettings(),
    );

    await _natifications.initialize(settings);
  }

  static Future showNotification({
    var id = 0,
    var title,
    var body,
    var payload,
  }) async =>
      _natifications.show(id, title, body, await notificationDetails());

  static Future notificationDetails() async {
    return const NotificationDetails(
      android: AndroidNotificationDetails(
        'channel id',
        'channel name',
        importance: Importance.max,
        playSound: false,
      ),
      iOS: DarwinNotificationDetails(),
    );
  }
}
