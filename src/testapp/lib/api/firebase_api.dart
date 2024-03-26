import 'package:firebase_messaging/firebase_messaging.dart';

class FireBaseApi {
  final _firebaseMesaging = FirebaseMessaging.instance;

  Future<void> initNotifications() async {
    await _firebaseMesaging.requestPermission();
    final fcmToken = await _firebaseMesaging.getToken();
    print('Token: $fcmToken');
  }
}