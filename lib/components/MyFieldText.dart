import 'package:flutter/material.dart';

class MyFieldText extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obscureText;
  final IconData? icon;

   MyFieldText({
    super.key,
   required this.controller,
   required this.hintText,
   required this.obscureText,
   this.icon, 
   required Null Function(dynamic value) onChanged, 
  
   });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal:20.0),
         child: TextField(
          controller: controller, 
          obscureText: obscureText,
          decoration: InputDecoration(
          hintText: hintText,
          filled: true,
          fillColor: Colors.white,
          contentPadding: const EdgeInsets.all(10),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10), // Điều chỉnh độ bo góc ở đây
          ),
          prefixIcon: icon != null
              ? Icon(
                  icon,
                  color: Colors.grey,
                )
              : null,
        ),
      ),
    );
  }
}