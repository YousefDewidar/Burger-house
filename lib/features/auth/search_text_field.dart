import 'package:burger_house/core/utils/widgets/space.dart';
import 'package:flutter/material.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16),
      child: TextField(
        // controller: cont,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(20),
          filled: true,
          fillColor: const Color(0xffEFEEEE),
          hintText: 'Search',
          hintStyle: const TextStyle(
              height: 1,
              fontSize: 22,
              color: Color(0xff868585),
              fontWeight: FontWeight.normal),
          enabledBorder: borderTextField(),
          focusedBorder: borderTextField(),
          prefixIcon: const PrefixIcon(),
        ),
      ),
    );
  }

  OutlineInputBorder borderTextField() => OutlineInputBorder(
      borderSide: const BorderSide(color: Color.fromARGB(223, 255, 255, 255)),
      borderRadius: BorderRadius.circular(30));
}

class PrefixIcon extends StatelessWidget {
  const PrefixIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        SpaceH(15),
        Icon(Icons.search_outlined, color: Color(0xff878686)),
        SpaceH(10),
      ],
    );
  }
}
