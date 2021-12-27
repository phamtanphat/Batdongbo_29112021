void main(){
  Future<int> data = Future.delayed(Duration(seconds: 2) ,(){
    throw Exception("Loi nhe");
  });
  
  data
      .then((value) => print(value))
      .catchError((error) => print(error));
}