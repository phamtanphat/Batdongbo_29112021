void main(){
  
  // Future<int> data = Future.delayed(Duration(seconds: 2),() => 1);
  //
  // Stream<int> stream = Stream.fromFuture(data);
  //
  // stream.listen((event) {
  //   print(event);
  // });



  // var data = Iterable.generate(10 ,(index){
  //   return 5;
  // });
  // //
  // Stream stream = Stream.fromIterable(data);
  //
  // stream.listen((event) {
  //   print(event.toString());
  // });

  Stream stream = Stream.periodic(Duration(seconds: 1),(value){
    return value;
  }).asBroadcastStream();

  stream.take(10).listen((event) {
    print("Location 1 $event");
  });

  stream.listen((event) {
    print("Location 2 $event");
  });
}

