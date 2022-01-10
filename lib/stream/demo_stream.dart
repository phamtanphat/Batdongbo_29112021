import 'dart:async';

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

  // Stream stream = Stream.periodic(Duration(seconds: 1),(value){
  //   return value;
  // }).asBroadcastStream();
  //
  // stream.take(10).listen((event) {
  //   print("Location 1 $event");
  // });
  //
  // stream.listen((event) {
  //   print("Location 2 $event");
  // });


  // Stream stream = Stream.periodic(Duration(seconds: 1),(value){
  //   return value;
  // }).asBroadcastStream();
  //
  // var subscription = stream.listen((event) {
  //   print("Location 1 $event");
  // });
  //
  //
  // Future.delayed(Duration(seconds: 4),(){
  //   subscription.pause();
  //   subscription.resume();
  // });


  StreamController<int> streamController = StreamController();


  streamController.sink.add(123);
  streamController.sink.add(456);
  streamController.sink.add(789);

  streamController.stream.listen((event) {
    print(event.toString());
  });

}

