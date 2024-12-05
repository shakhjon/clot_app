import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  final VoidCallback onPressed;
  String? text;
   CustomButton({
     super.key,
     required this.onPressed,
     required this.text,
   });

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.deepPurpleAccent,
        minimumSize: const Size(double.infinity, 50),
      ),
      onPressed: widget.onPressed,
      child:  Center(
        child: Text(
          widget.text!,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
