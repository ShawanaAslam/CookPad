

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BlueTextFormField extends StatelessWidget {
  String hint;
  String label;
  IconData icon;
  TextEditingController controller;
  bool input;
  BlueTextFormField({super.key,
    required this.hint, required this.label,
    this.icon=Icons.email,
    required this.controller,
    this.input=false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: input,
      style: TextStyle(color: Colors.blueAccent),
      decoration: InputDecoration(
          labelText: label,
          hintText: hint,
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blueAccent),
              borderRadius: BorderRadius.circular(30)
          ),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blueAccent),
              borderRadius: BorderRadius.circular(30)
          ),
          hintStyle: TextStyle(color: Colors.blueAccent),
          labelStyle: TextStyle(color: Colors.blueAccent),
          prefixIcon: Icon(icon,color: Colors.blueAccent,)
      ),
    );
    //.paddingOnly(left: 15,right: 15,top: 10);
  }
}