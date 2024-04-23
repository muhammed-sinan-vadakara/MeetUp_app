import 'package:flutter/material.dart';

class PasswordFormTextFieldWidget extends StatefulWidget {
  final String? hinttText;
  final TextEditingController controller;

  final dynamic keyboardtype;
  final dynamic validator;

  const PasswordFormTextFieldWidget(
      {super.key,
      required this.hinttText,
      required this.controller,
      this.validator,
      this.keyboardtype});

  @override
  State<PasswordFormTextFieldWidget> createState() =>
      _PasswordFormTextFieldWidgetState();
}

class _PasswordFormTextFieldWidgetState
    extends State<PasswordFormTextFieldWidget> {
  bool passToggle = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: widget.validator,
      style: TextStyle(
        color: Colors.grey,
      ),
      controller: widget.controller,
      keyboardType: widget.keyboardtype,
      cursorColor: Colors.grey,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 16,
        ),
        hintText: widget.hinttText,
        hintStyle: TextStyle(
          color: Colors.grey,
        ),
        prefixIcon: InkWell(
          onTap: () {
            setState(() {
              passToggle = !passToggle;
            });
          },
          child: Icon(
            passToggle ? Icons.visibility : Icons.visibility_off,
            color: Colors.blue,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(
            color: Colors.black,
          ),
        ),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(color: Colors.grey)),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
