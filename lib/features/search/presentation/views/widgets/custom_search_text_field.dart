import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
        decoration: InputDecoration(
          enabledBorder: buildOutlineInputBorder(),
          focusedBorder:  buildOutlineInputBorder(),

          hintText: 'Search',
          suffixIcon: IconButton(
            onPressed: () {},
            icon: const Icon(FontAwesomeIcons.magnifyingGlass,
              size: 20,
            ),
          ),
        )
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
      borderSide: const BorderSide(
          color : Colors.white
      ),
      borderRadius: BorderRadius.circular(10),
    );
  }
}
