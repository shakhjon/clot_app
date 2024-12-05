
import 'package:flutter/material.dart';
import 'package:my_project/core/route/rout_names.dart';
import 'package:my_project/features/auth/widgets/custom_button.dart';

import '../widgets/log_in_forms.dart';

class SignInEmail extends StatelessWidget {
  const SignInEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1D182A),
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
            //! Forms
            LogInForms(text: "Email Address", hideText: false,),
            const SizedBox(
              height: 20,
            ),

            // Custom button
            CustomButton(onPressed: () {
              Navigator.pushNamed(context, RouteNames.signInPassword);
            }, text: "Continue"),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const Text(
                  "Don't have an Account ?",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, RouteNames.createAccount);
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
                    "Create One",
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            elevatedButton(Icons.apple, "Continue With Apple"),
            const SizedBox(
              height: 20,
            ),
            elevatedButton(Icons.g_mobiledata, "Continue With Google"),
            const SizedBox(
              height: 20,
            ),
            elevatedButton(Icons.facebook, "Continue With Facebook")
          ],
        ),
      ),
    );
  }
}

Widget elevatedButton(IconData icon, String text) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.white10,
      minimumSize: const Size(
        double.infinity,
        60,
      ),
    ),
    onPressed: () {},
    child: Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            icon,
            color: Colors.white,
            size: 25,
          ),
          Text(
            text,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            width: 16,
          )
        ],
      ),
    ),
  );
}
