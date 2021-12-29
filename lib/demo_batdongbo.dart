import 'dart:async';

import 'package:batdongbo_29112021/demo1_model.dart';
import 'package:batdongbo_29112021/demo2_model.dart';
import 'package:dio/dio.dart';

void main() {
  // Future<int> data = tinhTong(5, 10);
  // data.then((value) => print(value));
  fetchDemo2();
}

void fetchDemo1() {
  Dio dio = Dio();

  // demo1

  var urlDemo1 = "https://khoapham.vn/KhoaPhamTraining/json/tien/demo1.json";

  dio.get(urlDemo1).then((value) {
    var data = Demo1.fromJSON(value.data);
    print(data.toString());
  }).catchError((error) => print("Error $error"));
}

void fetchDemo2() {
  Dio dio = Dio();

  // demo1

  var urlDemo2 = "https://khoapham.vn/KhoaPhamTraining/json/tien/demo2.json";

  dio.get(urlDemo2).then((value) {
    var data = Demo2.fromJson(value.data);
    print(data.toString());
  }).catchError((error) => print("Error $error"));
}
