import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({super.key, required this.onChanged});
  final Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.9,
      decoration: BoxDecoration(
          color: const Color.fromARGB(163, 66, 64, 64),
          borderRadius: BorderRadius.circular(10)),
      child: TextField(
        onChanged: onChanged,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w400,
        ),
        decoration: const InputDecoration(
          prefixIcon: Icon(
            Icons.search,
            color: Color.fromARGB(255, 167, 164, 164),
          ),
          hintText: "Search",
          hintStyle: TextStyle(
            color: Color.fromARGB(255, 167, 164, 164),
            fontSize: 17,
            fontWeight: FontWeight.w500,
          ),
          focusedBorder: InputBorder.none,
        ),
      ),
    );
  }
}
