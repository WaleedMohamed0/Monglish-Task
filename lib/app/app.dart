import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:monglish/config/app_routes.dart';
import 'package:monglish/core/di/dependency_injection.dart';
import 'package:monglish/features/login/data/apis/login_api_service.dart';
import 'package:monglish/features/login/domain/repositories/login_repo.dart';
import 'package:monglish/features/login/presentation/cubits/login_cubit/login_cubit.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Monglish extends StatelessWidget {
  const Monglish({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, p0, p1) => BlocProvider(
        create: (context) => di<LoginCubit>(),
        child: MaterialApp.router(
          builder: (context, child) => child!,
          routerConfig: AppRoutes.router,
          theme: ThemeData(
              fontFamily: "QuickSand", scaffoldBackgroundColor: Colors.white),
          debugShowCheckedModeBanner: false,
        ),
      ),
    );
  }
}
