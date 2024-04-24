import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:meetup_app/widgets/auth_elevatedbutton_widget.dart';
import 'package:meetup_app/widgets/elevator__button_widget.dart';
import 'package:meetup_app/widgets/form_text_field_widget.dart';
import 'package:meetup_app/widgets/password_form_text_field_widget.dart';

class LoginPage extends HookConsumerWidget {
  static const routePath = '/login';
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _formKey = GlobalKey<FormState>();
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              "STORE ADMIN APP",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 24,
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: SizedBox(
                          height: 150,
                          width: 300,
                          child: Lottie.asset(
                              "assets/animations/signuppage.json",
                              fit: BoxFit.cover)),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Text(
                      "EMAIL",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  FormTextFieldWidget(
                      validator: (value) {
                        bool emailValid = RegExp(
                                r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                            .hasMatch(value!);

                        if (value!.isEmpty) {
                          return "Enter Email";
                        }

                        if (!emailValid) {
                          return "Enter Valid Email";
                        }
                      },
                      hinttText: "EMAIL",
                      keyboardtype: TextInputType.emailAddress,
                      prefixxIcon: Icon(
                        Icons.email_outlined,
                        color: Colors.blue,
                      ),
                      controller: emailController),
                  SizedBox(
                    height: 24,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 16),
                    child: Text(
                      "PASSWORD",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  PasswordFormTextFieldWidget(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Enter Password";
                        } else if (passwordController.text.length < 6) {
                          return "Password Lenght should be more than 6 characters";
                        }
                      },
                      hinttText: "PASSWORD",
                      keyboardtype: TextInputType.number,
                      controller: passwordController),
                  SizedBox(
                    height: 32,
                  ),
                  ElevatedButtonWidget(text: "Login ", onPressed: () {}

                      // =>
                      ),
                  SizedBox(
                    height: 12,
                  ),
                  AuthElevatedButtonWidget(
                    text: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 25,
                          width: 25,
                          child: SvgPicture.asset(
                              "assets/icons/ic_google_icon.svg"),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          "Sign in with Google",
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                    onPressed: () {},
                    //  () => ref
                    //     .read(authenticationProvider.notifier)
                    //     .googleverification(context),
                    colours: Colors.grey,
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Do not have an account . Please"),
                        TextButton(
                          onPressed: () {},
                          // () => context.go(SignupPage.routePath),
                          child: Container(
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(width: 1, color: Colors.blue),
                                  borderRadius: BorderRadius.circular(32),
                                  color: Colors.grey),
                              child: Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: Text(
                                  "SignUp",
                                  style: TextStyle(color: Colors.blue),
                                ),
                              )),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
