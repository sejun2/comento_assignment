import 'dart:async';
import 'dart:io';

import 'package:comento_assignment/data/models/feed_category.dart';
import 'package:dio/dio.dart';

import '../models/ads_list.dart';
import '../models/feed_details.dart';
import '../models/feed_list.dart';
import 'comento_repository.dart';

class ComentoRepositoryImpl implements ComentoRepository {
  final Dio comentoApiClient;

  ComentoRepositoryImpl({required this.comentoApiClient});

  @override
  FutureOr<FeedCategory?> getFilterCategory() async{
    try {
      final response = await comentoApiClient.get('/api/category');

      if(response.statusCode == HttpStatus.ok){
        return FeedCategory.fromJson(response.data);
      }else{
        return null;
      }
    } catch (e) {
      rethrow;
    }
  }

  @override
  FutureOr<FeedDetails?> getFeedDetail({required int id}) async{
    try {
      final response = await comentoApiClient.get('/api/view', queryParameters: {'id': id});

      if(response.statusCode == HttpStatus.ok){
        return FeedDetails.fromJson(response.data);
      }else{
        return null;
      }
    } catch (e) {
      rethrow;
    }
  }

  @override
  FutureOr<FeedList?> getFeedList({required int page, String ord = 'asc', required List<CategoryBean> categories, int limit = 10}) async {
    try {
      //make category param string
      String categoryParam = '';
      categories.forEach((element) {
        categoryParam = '$categoryParam&category[]=${element.id.toString()}';
      });

      final response = await comentoApiClient.get('/api/list?page=$page&ord=$ord&limit=$limit$categoryParam', );

      if(response.statusCode == HttpStatus.ok){
        return FeedList.fromJson(response.data);
      }else{
        return null;
      }
    } catch (e) {
      rethrow;
    }
  }

  @override
  FutureOr<AdsList?> getAdsList({required int page, required int limit}) async{
    try {
      final response = await comentoApiClient.get('/api/ads', queryParameters: {
        'page': page, 'limit': limit
      });

      if(response.statusCode == HttpStatus.ok){
        return AdsList.fromJson(response.data);
      }else{
        return null;
      }
    } catch (e) {
      rethrow;
    }
  }
}