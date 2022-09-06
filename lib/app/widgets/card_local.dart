import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';
import 'package:pet_care/app/data/models/local.model.dart';

class CardLocal extends StatelessWidget {
  final Local local;
  const CardLocal({Key? key, required this.local}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: 100,
        width: 100,
        child: Column(
          children: [
            Row(
              children: [
                Image.network(
                  'https://lh5.googleusercontent.com/p/AF1QipOW-bDiID34Gn07FBv3zr9nR4stp3JOm6-JhiTg=w1440-h1080-k-no',
                ),
                Column(
                  children: [
                    const Text(
                      'Nombre:',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(local.name ?? ''),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
