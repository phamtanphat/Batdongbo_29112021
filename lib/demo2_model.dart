import 'danh_sach_model.dart';

class Demo2 {
  late List<Danhsach> danhsach;

  Demo2({required this.danhsach});

  Demo2.fromJson(Map<String, dynamic> json) {
    if (json['danhsach'] != null) {
      danhsach = [];
      json['danhsach'].forEach((v) {
        danhsach.add(new Danhsach.fromJson(v));
      });
    }
  }

  @override
  String toString() {
    return 'Demo2{danhsach: $danhsach}';
  }
}