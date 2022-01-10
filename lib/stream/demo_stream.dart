void main(){
  
  // Future<int> data = Future.delayed(Duration(seconds: 2),() => 1);
  //
  // Stream<int> stream = Stream.fromFuture(data);
  //
  // stream.listen((event) {
  //   print(event);
  // });


  Iterable<int> iterable = genIterates(10);
  Iterator<int> iterator = iterable.iterator;

  while(iterator.moveNext()){
    print(iterator.current.toString());
  }
}

Iterable<int> genIterates(int max) sync* {
  var i = 0;
  while (i < max) {
    yield i;
    i++;
  }
}