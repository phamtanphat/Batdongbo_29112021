class Danhsach {
  late String khoahoc;

  Danhsach({required this.khoahoc});

  Danhsach.fromJson(Map<String, dynamic> json) {
    khoahoc = json['khoahoc'];
  }

  @override
  String toString() {
    return 'Danhsach{khoahoc: $khoahoc}';
  }
}