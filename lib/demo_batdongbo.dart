import 'dart:async';

import 'package:batdongbo_29112021/demo1_model.dart';
import 'package:dio/dio.dart';

void main(){
  // Future<int> data = tinhTong(5, 10);
  // data.then((value) => print(value));

  Dio dio = Dio();


  // demo1

  var urlDemo1 = "https://khoapham.vn/KhoaPhamTraining/json/tien/demo1.json";

  dio
      .get(urlDemo1)
      .then((value){
          var data = Demo1.fromJSON(value.data);
          print(data.toString());
      })
      .catchError((error) => print("Error $error"));
}
