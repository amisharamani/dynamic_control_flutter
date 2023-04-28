
import 'package:flutter/material.dart';

import 'Global.dart';

class details_page extends StatefulWidget {
  const details_page({Key? key}) : super(key: key);

  @override
  State<details_page> createState() => _Page1State();
}

class _Page1State extends State<details_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Input Details"),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
            Global.value = [];
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: List.generate(
            Global.value.length,
            (index) => Row(
              children: [
                Text("${index + 1}."),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  Global.value[index],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
