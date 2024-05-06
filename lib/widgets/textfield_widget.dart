import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final String? hinttText;
  final TextEditingController controller;
  final Widget? prefixxIcon;
  final Widget? suffixxIcon;
  final dynamic? keyboardtype;
  final String? errorText;

  const TextFieldWidget(
      {super.key,
      required this.hinttText,
      this.prefixxIcon,
      this.suffixxIcon,
      required this.controller,
      this.errorText,
      this.keyboardtype});

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(
        color: Colors.black,
      ),
      controller: controller,
      keyboardType: keyboardtype,
      cursorColor: Colors.black,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 16,
        ),
        errorText: errorText,
        hintText: hinttText,
        hintStyle: TextStyle(
          color: Colors.grey,
        ),
        suffixIcon: suffixxIcon,
        prefixIcon: prefixxIcon,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(
            color: Colors.black,
          ),
        ),
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




// import 'package:flutter/material.dart';

// class TextFieldWidget extends StatelessWidget {
//   final TextEditingController? controller;
//   final String? errorText;
//   const TextFieldWidget(
//       {super.key, required this.controller, required this.errorText});

//   @override
//   Widget build(BuildContext context) {
//     return TextField(
//       controller: controller,
//       decoration: InputDecoration(
//           hintText: 'Enter User id...',
//           fillColor: Colors.grey.withOpacity(.30),
//           filled: true,
//           errorText: errorText,
//           border: InputBorder.none),
//     );
//   }
// }