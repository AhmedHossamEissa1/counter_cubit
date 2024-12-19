import 'dart:developer';

import 'package:counter_cubit/cubits/counter_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterStates> {
  CounterCubit() : super(CounterInitial());
  int group1 = 0;
  int group2 = 0;
  void addCounter({required int groupNum, required int num}) {
    if (groupNum == 1) {
      log("add  to group1");
      group1 += num;
      emit(CounterAdd());
    } else {
      log("add  to group2");
      group2 += num;
      emit(CounterAdd());
    }
  }
}
