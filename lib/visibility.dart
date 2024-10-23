import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';

class visibilityCubit extends Cubit<bool> {
  visibilityCubit() : super(false);

  void change() => {
    emit(!state)
  };

}