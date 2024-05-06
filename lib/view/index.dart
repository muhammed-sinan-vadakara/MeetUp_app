import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uuid/uuid.dart';
import 'package:meetup_app/controller/login_provider.dart';
import 'package:meetup_app/view/call_page.dart';
import 'package:meetup_app/widgets/elevator__button_widget.dart';
import 'package:meetup_app/widgets/logo_widget.dart';
import 'package:meetup_app/widgets/showdialogue_widget.dart';
import 'package:meetup_app/widgets/title_widget.dart';

class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final uuid = const Uuid().v1();
    final data = ref.read(loginProvider.notifier);
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.grey,
                  Color(0xffd8eaff),
                  Color(0xffd8eaff),
                ],
              ),
            ),
            child: const Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    LogoWidget(),
                    TitleWidget(
                      title: 'MEET UP',
                      subtitle: 'Lets Go',
                    ),
                    SizedBox(
                      height: 32,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            right: 16,
            top: 32,
            child: IconButton(
                onPressed: () {
                  data.signOut(context);
                },
                icon: const Icon(Icons.logout)),
          )
        ],
      ),
      bottomNavigationBar: Container(
        color: const Color(0xffd8eaff),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButtonWidget(
                text: 'Create',
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) => VideoCallPage(
                              callID: uuid,
                            )),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButtonWidget(
                text: 'Join',
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return const ShowDialogWidget();
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
