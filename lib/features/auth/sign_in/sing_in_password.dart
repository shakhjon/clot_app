import 'package:flutter/material.dart';
import 'package:my_project/core/constants/color.dart';
import 'package:my_project/core/route/rout_names.dart';
import 'package:my_project/features/auth/widgets/custom_button.dart';
import 'package:my_project/features/auth/widgets/log_in_forms.dart';

class SignInPassword extends StatelessWidget {
  const SignInPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.mainColor,
      body: Padding(
        padding: const EdgeInsets.only(right: 20, left: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Sign in",
              style: TextStyle(
                color: Colors.white,
                fontSize: 32,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            LogInForms(text: "Password", hideText: true,),
            const SizedBox(
              height: 20,
            ),
            CustomButton(
                onPressed: () {
              Navigator.pushNamed(context, RouteNames.bottomNavBar);
            },
                text: "Continue"),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const Text(
                  "Forgot Password ?",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/resetPage");
                  },
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white, // Sets the text color
                    textStyle: const TextStyle(
                      fontSize: 16, // Example for font size (optional)
                      fontWeight:
                          FontWeight.bold, // Example for bold text (optional)
                    ),
                  ),
                  child: const Text(
                    "Reset",
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 280,
            ),
          ],
        ),
      ),
    );
  }
}
