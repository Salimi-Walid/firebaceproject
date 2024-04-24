import 'package:flutter/material.dart';

class Textfiel extends StatelessWidget {
  final bool Ispassword;
  final TextInputType TextInputType1;
  final String hinttext;

  const Textfiel(
      {super.key,
      required this.Ispassword,
      required this.TextInputType1,
      required this.hinttext});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(33, 2, 33, 5),
      padding: const EdgeInsets.all(3),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 252, 251, 249),
        borderRadius: BorderRadius.circular(22),
      ),
      child: TextField(
        obscureText: Ispassword,
        keyboardType: TextInputType1,
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
            hintText: hinttext,
            hintStyle: const TextStyle(fontSize: 22),
            border: InputBorder.none),
      ),
    );
  }
}
