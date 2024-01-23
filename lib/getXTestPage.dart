import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:get/utils.dart';

class GetXTestPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GetElevatedButton(
                title: 'Snack Bar'.tr,
                onPressButton: () => Get.snackbar('title', 'message'),
              ),
              GetElevatedButton(
                title: 'default Dialog'.tr,
                onPressButton: () => Get.defaultDialog(
                    title: 'default Dialog',
                    content: Text('짜잔형이 좋아요~ 왜? 그냥그냥그냥~')),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GetElevatedButton(
                title: 'Ko',
                onPressButton: () => Get.updateLocale(Locale('ko', 'KR')),
              ),
              GetElevatedButton(
                  title: 'En',
                  onPressButton: () => Get.updateLocale(Locale('en', 'US'))),
              GetElevatedButton(
                  title: 'Fr',
                  onPressButton: () => Get.updateLocale(Locale('fr', 'FR'))),
            ],
          ),
        ],
      ),
    );
  }
}

class GetElevatedButton extends StatelessWidget {
  final String title;
  final Function onPressButton;

  const GetElevatedButton(
      {super.key, required this.title, required this.onPressButton});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: () => onPressButton(), child: Text(title));
  }
}
