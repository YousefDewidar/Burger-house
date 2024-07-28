import 'package:flutter/material.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      autofocus: true,
      // controller: cont,
      decoration: InputDecoration(
        hintText: 'Search',
        enabledBorder: borderTextField(),
        focusedBorder: borderTextField(),
        suffixIcon: IconButton(
          color: Colors.white.withOpacity(.6),
          onPressed: () {
          
          },
          icon: const Icon(Icons.search),
        ),
      ),
    );
  }

  OutlineInputBorder borderTextField() => OutlineInputBorder(
      borderSide: const BorderSide(color: Color.fromARGB(223, 255, 255, 255)),
      borderRadius: BorderRadius.circular(12));
}
