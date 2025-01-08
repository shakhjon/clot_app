import 'package:my_project/core/constants/color.dart';
import 'package:my_project/features/notification/widgets/notice.dart';
import 'package:flutter/material.dart';
import '../../core/route/rout_names.dart';

class NotificationPage extends StatelessWidget {
  final bool hasNotification = true;

  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: CustomColor.mainColor,
        appBar: AppBar(
          backgroundColor: CustomColor.mainColor,
          title: const Text(
            "Notifications",
            style: TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: hasNotification
            ? Padding(
                padding: const EdgeInsets.only(top: 40, left: 10, right: 10),
                child: Column(
                  children: [
                    notice(
                      "Gilbert, you placed and order check your order history for full details",
                    ),
                    notice(
                      "Gilbert, you placed and order check your order history for full details",
                    ),
                    notice(
                      "Gilbert, you placed and order check your order history for full details",
                    ),
                  ],
                ),
              )
            : SizedBox(
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/bell.png",
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    const Text(
                      "No Notification yet",
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: CustomColor.buttonColor,
                        minimumSize: const Size(185, 52),
                      ),
                      onPressed: () {
                        Navigator.pushReplacementNamed(
                          context,
                          RouteNames.ifHaveNotification,
                        );
                      },
                      child: const Text(
                        "Explore Categories",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    )
                  ],
                ),
              ),
      ),
    );
  }
}
