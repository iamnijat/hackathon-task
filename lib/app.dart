import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:hackathon_app/presentation/screens/intro_screen.dart';
import 'package:sizer/sizer.dart';
import 'package:device_preview/device_preview.dart';

import 'logic/cubit/counter_cubit.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CounterCubit>(
          create: (context) => CounterCubit(),
        ),
      ],
      child: const CounterApp(),
    );
  }
}

class CounterApp extends StatefulWidget {
  const CounterApp({
    Key key,
  }) : super(key: key);

  @override
  _CounterAppState createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> with WidgetsBindingObserver {
  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);
    super.initState();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            return Sizer(builder: (context, constraints, orientation) {
              return const GetMaterialApp(
                builder: DevicePreview.appBuilder,
                title: "Demo",
                debugShowCheckedModeBanner: false,
                home: AuthScreen(),
              );
            });
          },
        );
      },
    );
  }
}
