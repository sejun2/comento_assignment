enum ComentoFont{
  _SPOQA_HAN_SANS;

  static String get SPOQA_HAN_SANS => _SPOQA_HAN_SANS.toPlainString();

  String toPlainString(){
    String result = '';

    switch(this){
      case ComentoFont._SPOQA_HAN_SANS : result = 'SpoqaHanSans'; break;
    }

    return result;
  }
}