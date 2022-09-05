import 'package:flutter/material.dart';

class PetAvatar extends StatelessWidget {
  final height;
  final image;
  final name;
  final age;

  const PetAvatar({Key? key, this.height, this.image, this.name, this.age})
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
              image,
              width: height * 0.08,
              height: height * 0.08,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            name,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            age,
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
