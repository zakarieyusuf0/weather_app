// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: 15,
            ),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Please Enter The City',
                suffix: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.cloud,
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    10,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'City',
                ),
                Text(
                  'Faah-Faahin',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
