import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:makan_yuk/bottomnavbar/bottomnavbar.dart';
import 'package:makan_yuk/repo/login/login_cubit.dart';
import 'package:makan_yuk/ui/register.dart';

import '../constant/color_const.dart';
import '../widgets/button_makan.dart';
import '../widgets/formwidget_makan.dart';

class LoginMakan extends StatefulWidget {
  const LoginMakan({super.key});

  @override
  State<LoginMakan> createState() => _LoginMakanState();
}

class _LoginMakanState extends State<LoginMakan> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController emailConLog = TextEditingController();
  final TextEditingController passConLog = TextEditingController();

  @override
  void dispose() {
    emailConLog.dispose();
    passConLog.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: basicColor,
      body: BlocListener<LoginCubit, LoginState>(
        listener: (context, state) {
          if (state is LoginLoading) {
            ScaffoldMessenger.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(SnackBar(content: Text('Loading..')));
          }
          if (state is LoginFailure) {
            ScaffoldMessenger.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(SnackBar(
                content: Text(state.msg),
                backgroundColor: Colors.red,
              ));
          }
          if (state is LoginSuccess) {
            // context.read<AuthCubit>().loggedIn();
            ScaffoldMessenger.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(SnackBar(
                content: Text(state.msg),
                backgroundColor: Colors.green,
              ));
            Get.to(BottomNavBarMenu());
          }
        },
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/food1.png',
                    scale: 2.4,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image.asset(
                    'assets/food2.png',
                    scale: 2.4,
                  ),
                ],
              ),
              Image.asset(
                'assets/logo_makan.png',
                scale: 1.2,
              ),
              const SizedBox(height: 65),
              Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: white,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.7,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        children: [
                          const SizedBox(height: 20),
                          Row(
                            children: [
                              Expanded(
                                  child: Divider(
                                indent: 40,
                                endIndent: 10,
                                thickness: 1.5,
                                color: basicColor,
                              )),
                              const SizedBox(width: 15),
                              Text(
                                'Masuk',
                                style: TextStyle(
                                  color: basicColor,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const SizedBox(width: 15),
                              Expanded(
                                child: Divider(
                                  indent: 10,
                                  endIndent: 40,
                                  thickness: 1.5,
                                  color: basicColor,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const SizedBox(width: 10),
                              Text(
                                "Email",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: basicColor,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          Form(
                            key: _formKey,
                            child: Column(
                              children: [
                                FormMakan(
                                  controllerForm: emailConLog,
                                  textForm: 'Email',
                                  hintForm: 'Enter your email here',
                                  iconForm: Icons.email_outlined,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Email cannot be empty!';
                                    }
                                    return null;
                                  },
                                ),
                                const SizedBox(height: 15),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    const SizedBox(width: 10),
                                    Text(
                                      "Password",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        color: basicColor,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                                FormMakan(
                                  controllerForm: passConLog,
                                  textForm: 'Password',
                                  hintForm: 'Enter your password here',
                                  iconForm: Icons.lock_outline,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Password cannot be empty!';
                                    }
                                    return null;
                                  },
                                ),
                                const SizedBox(height: 20),
                                ButtonMakan(
                                  onPressedButton: () {
                                    if (_formKey.currentState!.validate()) {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        SnackBar(
                                          content: const Text('Berhasil Login'),
                                          backgroundColor: processColor,
                                        ),
                                      );
                                      // Get.offAll(const BottomNavBarMenu());
                                      // Navigator.pushNamed(context, '/home');
                                      context.read<LoginCubit>().login(
                                          email: emailConLog.text,
                                          password: passConLog.text);
                                    }
                                  },
                                  textButton: 'Masuk',
                                ),
                                const SizedBox(height: 20),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Belum punya akun?',
                                      style: TextStyle(
                                        color: basicColor,
                                        fontSize: 15,
                                      ),
                                    ),
                                    TextButton(
                                      child: Text(
                                        'Daftar',
                                        style: TextStyle(
                                          color: basicColor,
                                          fontSize: 15,
                                        ),
                                      ),
                                      onPressed: () {
                                        // Get.offAll(const RegistMakan());
                                        Navigator.pushNamed(
                                            context, '/register');
                                      },
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
