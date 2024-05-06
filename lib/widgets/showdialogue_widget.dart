import 'package:flutter/material.dart';
import 'package:meetup_app/view/call_page.dart';
import 'package:meetup_app/widgets/elevator__button_widget.dart';
import 'package:meetup_app/widgets/textfield_widget.dart';

class ShowDialogWidget extends StatefulWidget {
  const ShowDialogWidget({super.key});

  @override
  State<ShowDialogWidget> createState() => _ShowDialogWidgetState();
}

class _ShowDialogWidgetState extends State<ShowDialogWidget> {
  final TextEditingController uidController = TextEditingController();
  bool _validateError = false;
  @override
  void dispose() {
    uidController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        backgroundColor: Colors.white,
        shape:
            ContinuousRectangleBorder(borderRadius: BorderRadius.circular(30)),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextFieldWidget(
              controller: uidController,
              errorText: _validateError ? "user id is mandatory" : null,
              hinttText: 'Enter User id...',
            ),
            const SizedBox(
              height: 32,
            ),
            ElevatedButtonWidget(
              text: 'Join meet',
              onPressed: () {
                join();
              },
            ),
          ],
        ));
  }

  Future<void> join() async {
    setState(() {
      uidController.text.isEmpty
          ? _validateError = true
          : _validateError = false;
    });
    if (uidController.text.isNotEmpty) {
      await Future.sync(() => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => VideoCallPage(
              callID: uidController.text,
            ),
          )));
    }
    uidController.clear();
  }
}
