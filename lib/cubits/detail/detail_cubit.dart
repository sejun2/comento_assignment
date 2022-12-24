import 'package:comento_assignment/data/models/feed_details.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import '../../data/repositories/comento_repository.dart';
import 'detail_state.dart';

class DetailCubit extends Cubit<DetailState>{
  DetailCubit(super.initialState);

  final ComentoRepository _comentoRepository = GetIt.I.get<ComentoRepository>(instanceName: 'ComentoRepositoryImpl');

  Future<void> init(int id) async{
    try {
      emit(DetailLoading());
      final feedDetails = await _getFeedDetail(id);
      emit(DetailLoaded(feedDetails: feedDetails));
    } catch (e) {
      print(e);
      emit(DetailError(e.toString()));
    }
  }

  /// 피드 상세정보를 받아오는 함수
  Future<FeedDetails?> _getFeedDetail(int id) async {
    return await _comentoRepository.getFeedDetail(id: id);
  }
}