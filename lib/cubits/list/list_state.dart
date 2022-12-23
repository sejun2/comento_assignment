import 'package:flutter/material.dart';

@immutable
abstract class ListState{}

class ListInitial extends ListState{

}

class ListLoading extends ListState{

}

class ListLoaded extends ListState{

}

class ListError extends ListState{
  ListError({this.errorMessage});

  final String? errorMessage;

  @override
  String toString() {
    return errorMessage ?? 'error occurred';
  }
}

