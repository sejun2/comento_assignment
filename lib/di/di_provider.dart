import 'package:comento_assignment/repositories/comento_repository.dart';
import 'package:comento_assignment/repositories/comento_repository_impl.dart';
import 'package:get_it/get_it.dart';

class DIProvider{
  static provide(){
    GetIt.I.registerSingleton<ComentoRepository>(ComentoRepositoryImpl(), instanceName: 'ComentoRepositoryImpl');
  }
}