import 'package:fake_store/core/dependencies/init_dependencies.dart';
import 'package:fake_store/features/shop/presentation/bloc/cart_bloc/cart_bloc.dart';
import 'package:fake_store/features/shop/presentation/bloc/home_bloc/shop_bloc.dart';

import 'package:fake_store/features/shop/presentation/pages/home/scn_home.dart';
import 'package:fake_store/core/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initDependencies();
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider(create: (_) => serviceLocator<ShopBloc>()),
      BlocProvider(create: (context)=> CartBloc())
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: JAppTheme.lightTheme,
      darkTheme: JAppTheme.darkTheme,
      home: const ScnHome(),
    );
  }
}
