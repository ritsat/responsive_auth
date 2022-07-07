import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String label;

  final VoidCallback onPressed;

  const RoundedButton({Key? key, required this.label, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          padding: EdgeInsets.zero,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
      child: Ink(
        decoration: BoxDecoration(
            color: Colors.green, borderRadius: BorderRadius.circular(20)),
        child: Container(
          height: 40,
          alignment: Alignment.center,
          child: Text(
            label,
            style: const TextStyle(fontSize: 15, fontStyle: FontStyle.italic),
          ),
        ),
      ),
    );
  }
}
