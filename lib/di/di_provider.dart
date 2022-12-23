import 'package:comento_assignment/dio_provider.dart';
import 'package:get_it/get_it.dart';

import '../data/repositories/comento_repository.dart';
import '../data/repositories/comento_repository_impl.dart';

class DIProvider{
  static void provide(){
    GetIt.I.registerSingleton<ComentoRepository>(ComentoRepositoryImpl(comentoApiClient: DioProvider.comentoApiClient), instanceName: 'ComentoRepositoryImpl');
  }
}