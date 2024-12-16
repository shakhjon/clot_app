import 'package:my_project/core/constants/color.dart';
import 'package:my_project/core/route/rout_names.dart';
import 'package:my_project/features/auth/widgets/arrow.dart';
import 'package:my_project/features/profile/widgets/address_edit_widget.dart';
import 'package:flutter/material.dart';

class AddressEdit extends StatelessWidget {
  const AddressEdit({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.mainColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 40, left: 15, right: 15),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Arrow(
                    onPressed: () {
                      Navigator.pushNamed(context, RouteNames.bottomNavBar);
                    },
                    imgURL: 'assets/icons/back_arrow.png',
                  ),
                  const Text(
                    "Address",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    width: 30,
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const AddressEditWidget(),
              const AddressEditWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
