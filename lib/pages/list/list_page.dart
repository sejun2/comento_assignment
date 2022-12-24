import 'dart:collection';

import 'package:comento_assignment/cubits/list/list_cubit.dart';
import 'package:comento_assignment/pages/detail/detail_page.dart';
import 'package:comento_assignment/pages/list/widgets/feed_advertise_item_card.dart';
import 'package:comento_assignment/pages/list/widgets/feed_checkbox_tile.dart';
import 'package:comento_assignment/pages/list/widgets/feed_item_card.dart';
import 'package:comento_assignment/pages/list/widgets/feed_sort_button.dart';
import 'package:comento_assignment/pages/list/widgets/feed_square_button.dart';
import 'package:comento_assignment/pages/list/widgets/feed_submit_button.dart';
import 'package:comento_assignment/utils/comento_font.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';

import '../../cubits/list/list_state.dart';
import '../../data/models/feed_category.dart';

class ListPage extends StatefulWidget {
  static var routeName = 'LIST_PAGE';

  const ListPage({Key? key}) : super(key: key);

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  final scrollController = ScrollController();

  @override
  void initState() {
    _onEvent();
    super.initState();
  }

  void _onEvent() {
    scrollController.addListener(() {
      //스크롤을 최하단까지 했는지 여부 확인
      if(scrollController.position.maxScrollExtent == scrollController.position.pixels){
        //최하단까지 스크롤 되었다면 fetchList 호출
        context.read<ListCubit>().fetchList();
      }
    });
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            _buildControllerSection(),
            Container(color: const Color(0xffE1E4E7), height: 1,),
            Expanded(
              child: BlocConsumer<ListCubit, ListState>(builder: (context, state){
                if(state is ListLoaded) {
                  return Column(
                      children: [
                        _buildMainListSection(state),
                      // 처리중인경우 progressIndicator 띄워줌
                      if(state.isProcess) const Center(child: CircularProgressIndicator(),),
                      ]
                  );
                }else if( state is ListLoading){
                  return Center(child: LottieBuilder.asset('assets/images/progress_indicator_lottie.json', width: 50, height: 50,),);
                }else{
                  return const Center(child: Text('Something went wrong...'));
                }
              }, listener: (context, state){
              },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Expanded _buildMainListSection(ListLoaded state) {
    return Expanded(
        child: ListView.separated(
            separatorBuilder: (context, index){
              return Container(height: 10, color: CupertinoColors.systemGrey6,) ;
            },
            controller: scrollController,
            itemCount: (state.feedDataList?.length ?? 0) ,
            itemBuilder: (context, index) {

              return Column(children: [
                if (index % 3 == 0 && index != 0 && !context.watch<ListCubit>().hideAds) FeedAdvertiseItemCard(adsData: state.adsDataList?.elementAt((index/4).toInt()), onTap: (){}),
                FeedItemCard(feedData: state.feedDataList?.elementAt(index), filterCategoryList: context.read<ListCubit>().filterCategoryList, onTap: () {
                  Navigator.of(context).pushNamed(DetailPage.routeName, arguments: <String, Object?>{
                    'id': state.feedDataList?.elementAt(index).id,
                  });

                  debugPrint('id :: ${state.feedDataList?.elementAt(index).id}');
                },),
              ],);
            }));
  }

  Padding _buildControllerSection() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10, top: 13, right: 15, left: 15),
      child: Row(
        children: [
          FeedSortButton(onTap: ()async{await context.read<ListCubit>().requestOrdering(FeedOrdering.ASC);}, isActive: context.watch<ListCubit>().ordering == FeedOrdering.ASC, title: '오름차순'),
          FeedSortButton(onTap: ()async{await context.read<ListCubit>().requestOrdering(FeedOrdering.DESC);}, isActive:context.watch<ListCubit>().ordering == FeedOrdering.DESC, title: '내림차순'),
          const Expanded(child: SizedBox.shrink(),),
          BlocBuilder<ListCubit, ListState>(builder: (context, state){
              return FeedSquareButton(title: context.watch<ListCubit>().hideAds ? '광고 보이기' : '광고 가리기', onTap: () {
                context.read<ListCubit>().toggleHideAds();
              },);
          }),
          FeedSquareButton(title: '필터', onTap: (){
            final superContext = context;
            showDialog(
                barrierDismissible: true,
                context: superContext, builder: (context){
                  final cacheCategoryFilterHashMap = HashMap<CategoryBean, bool>.from(superContext.read<ListCubit>().categoryFilterHashMap);

                  final feedCheckboxTileWidgetList = cacheCategoryFilterHashMap.keys.toList().map((element) {
                    return FeedCheckboxTile(isChecked: cacheCategoryFilterHashMap[element] == true, title: element.name ?? '', onChanged: (value){
                      cacheCategoryFilterHashMap[element] = value ?? false;
                    });
                  }).toList();

              return AlertDialog(
              contentPadding: const EdgeInsets.symmetric(vertical: 6, horizontal: 6),
                   content: BlocProvider.value(
                     value: superContext.watch<ListCubit>(),
                     child: Column(
                         mainAxisSize: MainAxisSize.min,
                         crossAxisAlignment: CrossAxisAlignment.start,
                         mainAxisAlignment: MainAxisAlignment.start,
                         children: [
                           Row(
                             children: [
                               const Expanded(child: SizedBox.shrink()),
                               GestureDetector(child: const Icon(Icons.cancel),
                               onTap: (){
                                 Navigator.of(context, rootNavigator: false).pop('dialog');
                               },),
                             ],
                           ),
                           Padding(
                             padding: const EdgeInsets.only(top: 12, bottom: 20, left: 18, right: 18),
                             child: Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                               Text('필터', style: TextStyle(fontWeight: FontWeight.w700, fontSize: 22, fontFamily: ComentoFont.SPOQA_HAN_SANS),),
                               const SizedBox(height: 12,),
                               ...feedCheckboxTileWidgetList,
                               const SizedBox(height: 16,),
                               FeedSubmitButton(onTap: (){
                                 Navigator.of(context, rootNavigator: false).pop('dialog');
                                 superContext.read<ListCubit>().requestFiltering(cacheCategoryFilterHashMap);
                               }, title: '저장하기'),
                             ],),
                           ),
                         ],
                       )
                   ),
              );
            }
            );
          }) ,
        ],
      ),
    );
  }
}
