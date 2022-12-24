import 'package:comento_assignment/cubits/detail/detail_cubit.dart';
import 'package:comento_assignment/cubits/detail/detail_state.dart';
import 'package:comento_assignment/pages/detail/detail_page.dart';
import 'package:comento_assignment/pages/list/list_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

final appRoutes = <String, WidgetBuilder>{
  ListPage.routeName : (context) => const ListPage(),
  DetailPage.routeName : (context)  => BlocProvider(create: (context) => DetailCubit(DetailInitial()), child: const DetailPage()),
};
