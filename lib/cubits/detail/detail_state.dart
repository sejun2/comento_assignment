import 'package:flutter/cupertino.dart';

@immutable
abstract class DetailState{}

class DetailInitial extends DetailState{

}

class DetailLoading extends DetailState{

}

class DetailLoaded extends DetailState{

}

class DetailError extends DetailState{

  DetailError(this.errorMessage);

  final String? errorMessage;

  @override
  String toString() {
    return errorMessage ?? 'error occurred';
  }
}