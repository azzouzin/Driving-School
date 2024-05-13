import 'package:flutter/material.dart';
import 'package:stacked_notification_cards/stacked_notification_cards.dart';

class CarRepairView extends StatefulWidget {
  @override
  _CarRepairViewState createState() => _CarRepairViewState();
}

class _CarRepairViewState extends State<CarRepairView> {
  final List<NotificationCard> _listOfNotification = [
    NotificationCard(
      date: DateTime.now(),
      leading: const Icon(
        Icons.car_crash,
        size: 48,
      ),
      title: 'تغيير زيت المحرك',
      subtitle: 'يجب تغيير زيت المحرك لتتمكن من تشغيل السيارة.',
    ),
    NotificationCard(
      date: DateTime.now().subtract(
        const Duration(minutes: 4),
      ),
      leading: const Icon(
        Icons.payment,
        size: 48,
      ),
      title: 'موعد انتهاء التامين اقترب',
      subtitle: " يرجى الانتباه الى ان موعد التامين يقترب من اليوم.",
    ),
    NotificationCard(
      date: DateTime.now(),
      leading: const Icon(
        Icons.car_crash,
        size: 48,
      ),
      title: 'تغيير زيت المحرك',
      subtitle: 'يجب تغيير زيت المحرك لتتمكن من تشغيل السيارة.',
    ),
    NotificationCard(
      date: DateTime.now().subtract(
        const Duration(minutes: 4),
      ),
      leading: const Icon(
        Icons.payment,
        size: 48,
      ),
      title: 'موعد انتهاء التامين اقترب',
      subtitle: " يرجى الانتباه الى ان موعد التامين يقترب من اليوم.",
    
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            StackedNotificationCards(
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.25),
                  blurRadius: 2.0,
                )
              ],
              notificationCardTitle: 'Message',
              notificationCards: [..._listOfNotification],
              cardColor: const Color(0xFFF1F1F1),
              padding: 16,
              actionTitle: const Text(
                'اشعارات الاصلاح و الصيانة',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              showLessAction: const Text(
                'اظهر اقل',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple,
                ),
              ),
              onTapClearAll: () {
                setState(() {
                  _listOfNotification.clear();
                });
              },
              clearAllNotificationsAction: const Icon(Icons.close),
              clearAllStacked: const Text('Clear All'),
              cardClearButton: const Text('clear'),
              cardViewButton: const Text('view'),
              onTapClearCallback: (index) {
                print(index);
                setState(() {
                  _listOfNotification.removeAt(index);
                });
              },
              onTapViewCallback: (index) {
                print(index);
              },
            ),
          ],
        ),
      ),
    );
  }
}
