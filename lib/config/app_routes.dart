import 'package:comento_assignment/pages/detail/detail_page.dart';
import 'package:comento_assignment/pages/list/list_page.dart';
import 'package:flutter/material.dart';

final appRoutes = <String, WidgetBuilder>{
  ListPage.routeName : (context) => const ListPage(),
  DetailPage.routeName : (context)  => const DetailPage(),
};
