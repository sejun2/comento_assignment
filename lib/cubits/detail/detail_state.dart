import 'package:comento_assignment/data/models/feed_details.dart';
import 'package:flutter/cupertino.dart';

@immutable
abstract class DetailState{}

class DetailInitial extends DetailState{

}

class DetailLoading extends DetailState{

}

class DetailLoaded extends DetailState{
  final FeedDetails? feedDetails;

  DetailLoaded({this.feedDetails});
}

class DetailError extends DetailState{

  DetailError(this.errorMessage);

  final String? errorMessage;

  @override
  String toString() {
    return errorMessage ?? 'error occurred';
  }
}