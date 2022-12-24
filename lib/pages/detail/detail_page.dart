import 'package:comento_assignment/cubits/detail/detail_cubit.dart';
import 'package:comento_assignment/cubits/detail/detail_state.dart';
import 'package:comento_assignment/pages/detail/widgets/post_card.dart';
import 'package:comento_assignment/pages/detail/widgets/reply_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DetailPage extends StatefulWidget {
  static const routeName = 'DETAIL_PAGE';

  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {

  Map<String, Object?>? args;

  @override
  void initState() {
    Future.microtask(() {
      args = ModalRoute.of(context)?.settings.arguments as Map<String, Object?>;
      context.read<DetailCubit>().init((args?['id'] as int?) ?? -1);
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: SafeArea(
        child: BlocConsumer<DetailCubit, DetailState>(
          builder: (BuildContext context, state) {
            if(state is DetailLoaded) {
              return Column(
                children: [
                  Expanded(
                    child: CustomScrollView(
                        slivers: [
                      SliverList(
                        delegate: SliverChildBuilderDelegate(
                            childCount: state.feedDetails?.data?.reply?.length ?? 0 + 1,
                            (context, index) {
                              if(index == 0) {
                                return PostCard(feedDetails: state.feedDetails);
                              }
                              else{
                                return ReplyCard(feedDetailReply: state.feedDetails?.data?.reply ?.elementAt(index-1));
                              }
                            }),
                      ),
                    ]
                    ),
                  ),
                ],
              );
            }else if(state is DetailLoading){
              return const Center(child: CircularProgressIndicator(),);
            }else{
              return const Center(child: Text('Something went wrong...'),);
            }
          },
          listener: (BuildContext context, Object? state) {  },

        ),
      ),
    );
  }
}
