import 'package:comento_assignment/cubits/detail/detail_cubit.dart';
import 'package:comento_assignment/cubits/detail/detail_state.dart';
import 'package:comento_assignment/pages/detail/widgets/post_card.dart';
import 'package:comento_assignment/pages/detail/widgets/reply_card.dart';
import 'package:comento_assignment/utils/comento_font.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';

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
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        automaticallyImplyLeading: false,
        leading: IconButton(onPressed: (){
          Navigator.of(context).pop();
        }, icon: const Icon(Icons.arrow_back_ios_new, color: Colors.black54,)),
      ),
      body: SafeArea(
        child: BlocConsumer<DetailCubit, DetailState>(
          builder: (BuildContext context, state) {
            if(state is DetailLoaded) {
              return SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      PostCard(feedDetails: state.feedDetails),
                      Padding(
                        padding: const EdgeInsets.only(top: 16, bottom: 4, right: 16, left: 16),
                        child: RichText(text: TextSpan(
                          children: [
                            TextSpan(text: '답변', style: TextStyle(color: const Color(0xff495057),fontFamily: ComentoFont.SPOQA_HAN_SANS, fontSize: 16 ),),
                            TextSpan(text: ' ${state.feedDetails?.data?.reply?.length.toString() ?? 0}', style: TextStyle(color: const Color(0xff212529),fontFamily: ComentoFont.SPOQA_HAN_SANS, fontSize: 16 ),),
                          ]
                        )),
                      ),
                      ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: state.feedDetails?.data?.reply?.length ?? 0,
                          itemBuilder: (context, index){
                            return ReplyCard( feedDetailReply: state.feedDetails?.data?.reply ?.elementAt(index));
                          }),
                    ]
                ),
              );
            }else if(state is DetailLoading){
              return Center(child: LottieBuilder.asset('assets/images/progress_indicator_lottie.json', width: 50, height: 50,),);
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
