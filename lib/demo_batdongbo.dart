import 'dart:async';

void main(){
  // Future<int> data = tinhTong(5, 10);
  // data.then((value) => print(value));
  doSthing();
}

void doSthing() async{
  var data = await Future.delayed(Duration(seconds: 2), () => 1);
  print("alo");
  print(data);
}