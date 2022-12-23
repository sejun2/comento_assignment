import 'package:comento_assignment/cubits/detail/detail_state.dart';
import 'package:comento_assignment/cubits/list/list_state.dart';
import 'package:comento_assignment/pages/list/list_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubits/detail/detail_cubit.dart';
import 'cubits/list/list_cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MultiBlocProvider(providers: [
        BlocProvider<ListCubit>(create: (context) => ListCubit(ListInitial())),
        BlocProvider<DetailCubit>(create: (context) => DetailCubit(DetailInitial())),
      ], child: ListPage()),
    );
  }
}

