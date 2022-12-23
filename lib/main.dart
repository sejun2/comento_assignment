import 'package:comento_assignment/config/app_routes.dart';
import 'package:comento_assignment/cubits/detail/detail_state.dart';
import 'package:comento_assignment/cubits/list/list_state.dart';
import 'package:comento_assignment/di/di_provider.dart';
import 'package:comento_assignment/pages/list/list_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubits/detail/detail_cubit.dart';
import 'cubits/list/list_cubit.dart';

void main() {
  // init di
  DIProvider.provide();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {


    return MultiBlocProvider(
        providers: [
          BlocProvider<ListCubit>(create: (context) => ListCubit(ListInitial())),
          BlocProvider<DetailCubit>(create: (context) => DetailCubit(DetailInitial())),
        ],
        child: MaterialApp(
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          routes: appRoutes,
          initialRoute: ListPage.routeName,
          ),
        );
  }
}

