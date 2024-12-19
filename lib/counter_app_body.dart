import 'package:counter_cubit/cubits/counter_cubit.dart';
import 'package:counter_cubit/cubits/counter_states.dart';
import 'package:counter_cubit/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterAppBody extends StatelessWidget {
  const CounterAppBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocBuilder<CounterCubit, CounterStates>(
          builder: (context, state) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("Group 1"),
                    CustomButton(
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context)
                              .addCounter(groupNum: 1, num: 1);
                        },
                        txt: "Add 1"),
                    CustomButton(
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context)
                              .addCounter(groupNum: 1, num: 2);
                        },
                        txt: "Add 2"),
                    CustomButton(
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context)
                              .addCounter(groupNum: 1, num: 3);
                        },
                        txt: "Add 3"),
                    Text(BlocProvider.of<CounterCubit>(context)
                        .group1
                        .toString()),
                  ],
                ),
                VerticalDivider(
                  width: 10,
                  thickness: 2,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("Group 2"),
                    CustomButton(
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context)
                              .addCounter(groupNum: 2, num: 1);
                        },
                        txt: "Add 1"),
                    CustomButton(
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context)
                              .addCounter(groupNum: 2, num: 2);
                        },
                        txt: "Add 2"),
                    CustomButton(
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context)
                              .addCounter(groupNum: 2, num: 3);
                        },
                        txt: "Add 3"),
                    Text(BlocProvider.of<CounterCubit>(context)
                        .group2
                        .toString()),
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
