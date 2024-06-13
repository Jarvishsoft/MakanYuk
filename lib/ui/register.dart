import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:makan_yuk/repo/register/register_cubit.dart';
import 'package:makan_yuk/repo/routes/routes.dart';
import 'package:makan_yuk/ui/login.dart';

import '../constant/color_const.dart';
import '../widgets/button_makan.dart';
import '../widgets/formwidget_makan.dart';

class RegistMakan extends StatefulWidget {
  const RegistMakan({super.key});

  @override
  State<RegistMakan> createState() => _RegistMakanState();
}

class _RegistMakanState extends State<RegistMakan> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController namaContReg = TextEditingController();
  final TextEditingController emailContReg = TextEditingController();
  final TextEditingController passContReg = TextEditingController();

  @override
  void dispose() {
    namaContReg.dispose();
    emailContReg.dispose();
    passContReg.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<RegisterCubit, RegisterState>(
      listener: (context, state) {
        if (state is RegisterLoading) {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(SnackBar(content: Text('Loading..')));
        }
        if (state is RegisterFailure) {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(SnackBar(
              content: Text(state.msg),
              backgroundColor: Colors.red,
            ));
        }
        if (state is RegisterSuccess) {
          // context.read<AuthCubit>().loggedIn();
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(SnackBar(
              content: Text(state.msg),
              backgroundColor: Colors.green,
            ));
          Navigator.pushNamedAndRemoveUntil(context, rLogin, (route) => false);
        }
      },
      child: Scaffold(
        backgroundColor: basicColor,
        body: SingleChildScrollView(
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
                    height: MediaQuery.of(context).size.height * 0.8,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
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
                              SizedBox(width: 15),
                              Text(
                                'Daftar',
                                style: TextStyle(
                                  color: basicColor,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(width: 15),
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
                          Form(
                            key: _formKey,
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SizedBox(width: 10),
                                    Text(
                                      "Name",
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
                                  controllerForm: namaContReg,
                                  textForm: 'Name',
                                  hintForm: 'Enter your name here',
                                  iconForm: Icons.contacts_outlined,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Name cannot be empty!';
                                    }
                                    return null;
                                  },
                                ),
                                const SizedBox(height: 15),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SizedBox(width: 10),
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
                                FormMakan(
                                  controllerForm: emailContReg,
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
                                const SizedBox(height: 5),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SizedBox(width: 10),
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
                                  controllerForm: passContReg,
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
                                SizedBox(height: 20),
                                ButtonMakan(
                                  onPressedButton: () {
                                    context.read<RegisterCubit>().register(
                                        email: emailContReg.text,
                                        password: passContReg.text);

                                    if (_formKey.currentState!.validate()) {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        SnackBar(
                                          content: Text(
                                              'Berhasil Daftar, Silakan Masuk'),
                                          backgroundColor: processColor,
                                        ),
                                      );
                                    }
                                  },
                                  textButton: 'Daftar',
                                ),
                                const SizedBox(height: 20),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Sudah punya akun?',
                                      style: TextStyle(
                                        color: basicColor,
                                        fontSize: 15,
                                      ),
                                    ),
                                    TextButton(
                                      child: Text(
                                        'Masuk',
                                        style: TextStyle(
                                          color: basicColor,
                                          fontSize: 15,
                                        ),
                                      ),
                                      onPressed: () {
                                        Get.offAll(const LoginMakan());
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
