import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FormMakan extends StatefulWidget {
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
  State<FormMakan> createState() => _FormMakanState();
}

class _FormMakanState extends State<FormMakan> {
  // bool passInvisible = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: TextFormField(
          controller: widget.controllerForm,
          validator: widget.validator,
          decoration: InputDecoration(
            hintText: widget.hintForm,
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
              widget.iconForm,
              color: const Color(0xFF037283),
            ),
          ),
        ));
  }
}
