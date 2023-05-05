import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SearchField extends StatelessWidget {
  const SearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: TextField(      
              decoration: InputDecoration(
                hintText: 'Search here',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                borderSide: const BorderSide(color: Color.fromARGB(255, 248, 247, 255)),
                borderRadius: BorderRadius.circular(20.0),
          
              ),
              contentPadding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
              fillColor: Color.fromARGB(255, 248, 247, 255),
              filled: true,
              
            ),
          ),
          );
  }
}