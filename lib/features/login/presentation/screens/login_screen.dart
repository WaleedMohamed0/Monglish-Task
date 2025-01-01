import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:monglish/core/di/dependency_injection.dart';
import 'package:monglish/features/login/domain/repositories/login_repo.dart';
import 'package:monglish/features/login/presentation/cubits/login_cubit/login_cubit.dart';
import 'package:monglish/features/login/presentation/widgets/login_screen_body.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(di<LoginRepo>()),
      child: Scaffold(
        body: LoginScreenBody(),
      ),
    );
  }
}

