import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import '../../data/repositories/comento_repository.dart';
import 'detail_state.dart';

class DetailCubit extends Cubit<DetailState>{
  DetailCubit(super.initialState);

  final ComentoRepository _comentoRepository = GetIt.I.get<ComentoRepository>(instanceName: 'ComentoRepositoryImpl');
}