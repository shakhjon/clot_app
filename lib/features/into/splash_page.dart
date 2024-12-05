import 'dart:async';

import 'package:flutter/material.dart';

import '../../core/route/rout_names.dart';

class InfoPage extends StatefulWidget {
  const InfoPage({super.key});

  @override
  State<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, RouteNames.signInEmail);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff8E6CEF),
      body: Center(
        child: Image.asset("assets/images/info_page.png"),
      ),
    );
  }
}
