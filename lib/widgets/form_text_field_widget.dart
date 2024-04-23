import 'package:flutter/material.dart';

class FormTextFieldWidget extends StatelessWidget {
  final String? hinttText;
  final TextEditingController controller;
  final Widget? prefixxIcon;
  final Widget? suffixxIcon;
  final dynamic? keyboardtype;
  final dynamic? validator;
  final bool? enabled;

  FormTextFieldWidget(
      {super.key,
      required this.hinttText,
      this.prefixxIcon,
      this.suffixxIcon,
      required this.controller,
      this.enabled,
      this.validator,
      this.keyboardtype});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      style: TextStyle(color: Colors.black),
      controller: controller,
      enabled: enabled,
      keyboardType: keyboardtype,
      cursorColor: Colors.black,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 16,
        ),
        hintText: hinttText,
        hintStyle: TextStyle(
          color: Colors.grey,
        ),
        suffixIcon: suffixxIcon,
        prefixIcon: prefixxIcon,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(
            color: Colors.grey,
          ),
        ),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(color: Colors.grey)),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}
