
import 'dart:async';

void main(){
//  var iterator = getSyncGenerator(5).iterator;
//  while(iterator.moveNext()){
//    print(iterator.current);
//  }

  StreamSubscription subscription = getAsyncGenerator(5).listen(null);
  subscription.onData((value){
    print(value);
    if(value <= 2) subscription.pause();
  });
}

//同步生成器
Iterable<int> getSyncGenerator(int n) sync*{
  print('start');
  int k = n;
  while(k > 0){
    yield k--;
  }
  print('end');
}

//异步生成器
Stream<int> getAsyncGenerator(int n) async*{
  print('start');
  int k = n;
  while(k > 0){
    yield k--;
  }
  print('end');
}

//递归生成器
Iterable<int> getSyncGeneratorRe(int n) sync*{
  if(n>0){
    yield n;
    yield* getSyncGeneratorRe(n - 1);
  }
}

