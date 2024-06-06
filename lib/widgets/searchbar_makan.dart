import 'package:flutter/material.dart';

class SearchBarMakan extends StatelessWidget {
  final TextEditingController controlSearch;
  final String hintBar;
  final ValueChanged<String>? onChanged;

  const SearchBarMakan(
      {super.key,
      required this.controlSearch,
      required this.hintBar,
      this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Expanded(
        child: SearchBar(
          controller: controlSearch,
          padding: const MaterialStatePropertyAll(EdgeInsets.only(left: 10)),
          hintText: hintBar,
          textStyle: const MaterialStatePropertyAll(
            TextStyle(color: Colors.black38, fontSize: 15),
          ),
          onChanged: onChanged,
          onSubmitted: (value) {},
          textInputAction: TextInputAction.send,
          autoFocus: true,
          backgroundColor: const MaterialStatePropertyAll(Colors.white),
          overlayColor: const MaterialStatePropertyAll(Colors.white),
          shadowColor: const MaterialStatePropertyAll(Colors.transparent),
          leading: const Icon(Icons.search),
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(13),
              side: const BorderSide(),
            ),
          ),
        ),
      ),
    );
  }
}
