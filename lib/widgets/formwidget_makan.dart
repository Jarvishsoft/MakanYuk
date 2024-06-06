import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FormMakan extends StatelessWidget {
  String textForm;
  String hintForm;
  IconData iconForm;
  TextEditingController controllerForm;
  final String? Function(String?)? validator;

  FormMakan({
    super.key,
    required this.controllerForm,
    required this.textForm,
    required this.hintForm,
    required this.iconForm,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: TextFormField(
        controller: controllerForm,
        validator: validator,
        decoration: InputDecoration(
          hintText: hintForm,
          hintStyle: const TextStyle(
            fontSize: 13,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          prefixIconConstraints: BoxConstraints(
            minWidth: 55,
          ),
          prefixIcon: Icon(
            iconForm,
            color: const Color(0xFF037283),
          ),
        ),
      ),
    );
  }
}
