import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'splash_screen_state.dart';

class SplashScreenCubit extends Cubit<SplashScreenState> {
  SplashScreenCubit() : super(const SplashScreenState(3)) {
    Supabase.instance.client.auth.onAuthStateChange;
  }

  Future<void> startTimer(BuildContext context) async {
    Future.delayed(
      Duration(seconds: state.startSplashTimer),
      () {
        if (context.mounted) {}
      },
    );
  }
}
