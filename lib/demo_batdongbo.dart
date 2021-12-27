import 'dart:async';

void main(){
  Future<int> data = tinhTong(5, 10);
  data.then((value) => print(value));
}

Future<int> tinhTong(int a , int b){
  Completer<int> completer = Completer();
  Future.delayed(Duration(seconds: 2),(){
     Future.delayed(Duration(seconds: 1),(){
       int c = a + b;
       completer.complete(c);
       return a;
     });
  });
  return completer.future;
}