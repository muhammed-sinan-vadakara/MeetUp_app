import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ElevatedButtonWidget extends ConsumerWidget {
  final String text;

  final void Function() onPressed;
  const ElevatedButtonWidget(
      {super.key, required this.text, required this.onPressed});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: SizedBox(
        height: 50,
        width: MediaQuery.sizeOf(context).width,
        child: ElevatedButton(
            style: ButtonStyle(
                elevation: const MaterialStatePropertyAll(0),
                backgroundColor: MaterialStatePropertyAll(Colors.blue),
                shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)))),
            onPressed: onPressed,
            child: Text(
              text,
            )),
      ),
    );
  }
}
