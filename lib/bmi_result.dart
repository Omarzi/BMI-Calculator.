import 'package:flutter/material.dart';

class BMIResult extends StatelessWidget {
  late final double result;
  late final bool isMale;
  late final int age;

  BMIResult({
    required this.result,
    required this.isMale,
    required this.age,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.keyboard_arrow_left,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'BMi Result',
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Gender : ${isMale ? 'Male' : 'Female'}',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25.0,
              ),
            ),
            Text(
              'Result : $result',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25.0,
              ),
            ),
            Text(
              'Age : $age',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25.0,
              ),
            )
          ],
        ),
      ),
    );
  }
}
