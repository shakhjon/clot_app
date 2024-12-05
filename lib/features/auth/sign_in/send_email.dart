import 'package:flutter/material.dart';
import 'package:my_project/core/constants/color.dart';

class SendEmail extends StatelessWidget {
  const SendEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black45,
      body: Padding(
        padding: const EdgeInsets.all(22.0),
        child: Center(
          child: SizedBox(
            height: 400,
            width: double.infinity,
            child: Column(
              children: [
                const Image(
                  image: AssetImage("assets/images/send_email.png",),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  "We Sent You An Email To Reset \nYour Password.",
                  style: TextStyle(color: Colors.white, fontSize: 30),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 159,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor:  CustomColor.buttonColor,
                      minimumSize: const Size(double.infinity, 50),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(
                        context,
                        "/sign_in_email",
                      );
                    },
                    child: const Center(
                      child: Text(
                        "Return to Login ",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}