import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  static const routeName = 'DETAIL_PAGE';

  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(color: Colors.blue,),
    );
  }
}
