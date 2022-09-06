import 'package:flutter/material.dart';

Widget defaultFormField({
  required TextEditingController controller,
  required FormFieldValidator<String>? validator,
  required TextInputType keyboardType,
  required bool obscureText,
  required Widget prefixIcon,
  String? labelText,
  String? hintText,
  Widget? suffixIcon,
}) =>
    TextFormField(
      controller: controller,
      validator: validator,
      keyboardType: keyboardType,
      obscureText: obscureText,
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        labelText: labelText,
        hintText: hintText,
        hintStyle: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
        enabledBorder:  OutlineInputBorder(
          borderSide:BorderSide(
            width: 0.0,
            color: Colors.black.withOpacity(0),
          ),
        ),
      ),
    );
