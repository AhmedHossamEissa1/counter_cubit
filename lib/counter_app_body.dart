import 'package:counter_cubit/custom_button.dart';
import 'package:flutter/material.dart';

class CounterAppBody extends StatelessWidget {
  const CounterAppBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomButton(onPressed: () {}, txt: "Add 1"),
                CustomButton(onPressed: () {}, txt: "Add 2"),
                CustomButton(onPressed: () {}, txt: "Add 3"),
                Text("10"),
              ],
            ),
            VerticalDivider(
              width: 10,
              thickness: 2,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomButton(onPressed: () {}, txt: "Add 1"),
                CustomButton(onPressed: () {}, txt: "Add 2"),
                CustomButton(onPressed: () {}, txt: "Add 3"),
                Text("10"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
