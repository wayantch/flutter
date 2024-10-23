import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/physics.dart';
import 'package:meta/meta.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthSetInitial()) {
    on<AutheventLogin>((event, emit) async {
      emit(AuthStateLoading());

      // Simulasi autentikasi
      await Future.delayed(const Duration(seconds: 3));

      // Ubah ini ke kondisi sebenarnya
      bool isSucces = true;

      if (isSucces) {
        emit(AuthStateLoaded());
      } else {
        emit(AuthStateError(message: 'Data error'));
      }
    });
  }
}

