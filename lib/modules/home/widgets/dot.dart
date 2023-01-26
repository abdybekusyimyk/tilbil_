import 'package:flutter/material.dart';

class Dot extends StatelessWidget {
  const Dot({Key? key, required this.isCheck}) : super(key: key);

  final bool isCheck;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CircleAvatar(
        backgroundColor:
            isCheck ? const Color(0xFF68c052) : const Color(0xFFd9d9d9),
        radius: 3.5,
      ),
    );
  }
}
