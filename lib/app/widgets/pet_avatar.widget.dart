import 'package:flutter/material.dart';

class PetAvatar extends StatelessWidget {
  final height;
  final name;
  final text;

  const PetAvatar({Key? key, this.height, this.name, this.text})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: height * 0.08,
            child: Image.asset(
              name,
              width: height * 0.08,
              height: height * 0.08,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          )
        ],
      ),
    );
  }
}
