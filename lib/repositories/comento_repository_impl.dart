import 'package:comento_assignment/dio_provider.dart';
import 'package:comento_assignment/repositories/comento_repository.dart';

class ComentoRepositoryImpl extends ComentoRepository{
  final comentoHttpClient = DioProvider.comentoApiClient;

  @override
  getFilterCategory() {
    // TODO: implement getFilterCategory
    throw UnimplementedError();
  }

  @override
  getFeedDetail({required int id}) {
    // TODO: implement getFeedDetail
    throw UnimplementedError();
  }

  @override
  getFeedList({required int page, String ord = 'asc', required List<int> categories, required int limit}) {
    // TODO: implement getFeedList
    throw UnimplementedError();
  }

  @override
  getAdsList({required int page, required int limit}) {
    // TODO: implement getAdsList
    throw UnimplementedError();
  }
}