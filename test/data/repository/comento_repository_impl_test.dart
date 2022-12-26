import 'dart:convert';

import 'package:comento_assignment/cubits/list/list_cubit.dart';
import 'package:comento_assignment/data/models/feed_category.dart';
import 'package:comento_assignment/data/repositories/comento_repository.dart';
import 'package:comento_assignment/data/repositories/comento_repository_impl.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';


void main() async{
  late Dio mockComentoApiClient;
  late DioAdapter dioAdapter;

  late ComentoRepository comentoRepository;

  setUp(() {
    mockComentoApiClient = Dio(BaseOptions());
    dioAdapter = DioAdapter(dio: mockComentoApiClient);

    comentoRepository = ComentoRepositoryImpl(comentoApiClient: dioAdapter.dio);
  });

  group('ComentoRepository getFilterCategory()', () {
    test('when getFilterCategory is called with status 200 then returns FeedCategory instance', () async{
      const getCategoryFilterRoute = '/api/category';

      dioAdapter.onGet(getCategoryFilterRoute  ,(server) {
        final responseData = jsonDecode('{ "category": [ { "id": 1, "name": "apple" }, { "id": 2, "name": "banana" }, { "id": 3, "name": "coconut" } ] }');
        server.reply(200, responseData, delay: const Duration(seconds: 1));
      },);

      expect(await comentoRepository.getFilterCategory(), isA<FeedCategory>());
    });

    test('when getFilterCategory is called with not status 200, then throws DioError ', () async{
      const getCategoryFilterRoute = '/api/category';

      dioAdapter.onGet(getCategoryFilterRoute  ,(server) {
        final responseData = jsonDecode('{ "category": [ { "id": 1, "name": "apple" }, { "id": 2, "name": "banana" }, { "id": 3, "name": "coconut" } ] }');
        server.reply(500, responseData, delay: const Duration(seconds: 1));
      },);

      expect(() async => await comentoRepository.getFilterCategory(), throwsA(isA<DioError>()));
    });

    test('when getFilterCategory is timed out then throws dioError', () {
      const getCategoryFilterRoute = '/api/category';

      dioAdapter.onGet(getCategoryFilterRoute  ,(server) {
        server.throws(200, DioError(requestOptions: RequestOptions(path: getCategoryFilterRoute)), delay: const Duration(seconds:3));
      },);

      expect(() async => await comentoRepository.getFilterCategory(), throwsA(isA<DioError>()));
    });
  });
}