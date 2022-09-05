extension StringExt on String{
  String last(){
    return substring(length-1);
  }

  bool isLetter() {
    return contains(RegExp(r'[A-Za-z]')) ? true: false;
  }

  String dropLast() {
    return substring(0, length-1);
  }

  int count(bool Function(String ch) callback){
    int check = 0;
    for (int i=0; i<length; i++){
      if(callback(this[i])){
        check++;
      }
    }
    return check;
  }

  String take(int n) {
    String result = '';
    result =  substring(0, n);
    return result;

    // return substring(0, n);                  //동일한 코드
  }


  String takeLast(int n) {
    // String result = '';
    // result =  substring(length-n, length);
    // return result;                           //동일한 코드

    return substring(length-n);
  }

  String takeWhile(bool Function(String ch) callback){
    String result = '';
    for (int i=0; i<length; i++) {
      if (callback(this[i])) {
        result += this[i];
      }
      else {
        break;
      }
    }
    return result;
  }

  String takeLastWhile(bool Function(String ch) callback){
    String result = '';
    for (int i=length-1; i>=0; i--) {
      if (callback(this[i])) {
        result += this[i];
      }
      else {
        break;
      }
    }
    return result;
  }
}